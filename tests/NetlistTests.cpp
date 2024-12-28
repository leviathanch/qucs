#include "NetlistTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "."
#endif

Schematic *NetlistTests::openSchematic(QString schematic)
{
    qDebug() << "*** try to load schematic :" << schematic;

    // QString to *char
    QByteArray ba = schematic.toLatin1();
    const char *c_sch = ba.data();

    QFile file(schematic);    // save simulator messages
    if(file.open(QIODevice::ReadOnly)) {
        file.close();
    }
    else {
        fprintf(stderr, "Error: Could not load schematic %s\n", c_sch);
        return NULL;
    }

    // populate Modules list
    Module::registerModules ();

    // new schematic from file
    Schematic *sch = new Schematic(0, schematic);

    // load schematic file if possible
    if(!sch->loadDocument()) {
        fprintf(stderr, "Error: Could not load schematic %s\n", c_sch);
        delete sch;
        return NULL;
    }
    return sch;
}

int NetlistTests::doNetlist(QString schematic, QString netlist)
{
    Schematic *sch = openSchematic(schematic);
    if (sch == NULL) {
        return 1;
    }

    qDebug() << "*** try to write netlist    :" << netlist;

    // QString to *char
    QByteArray ba = schematic.toLatin1();
    const char *c_net = ba.data();

    QStringList Collect;

    QPlainTextEdit *ErrText = new QPlainTextEdit();    //dummy
    QFile NetlistFile;
    QTextStream     Stream;

    Collect.clear();    // clear list for NodeSets, SPICE components etc.

    NetlistFile.setFileName(netlist);
    if(!NetlistFile.open(QIODevice::WriteOnly)) {
        fprintf(stderr, "Error: Could not load netlist %s\n", c_net);
        return -1;
    }

    Stream.setDevice(&NetlistFile);
    int SimPorts = sch->prepareNetlist(Stream, Collect, ErrText);

    if(SimPorts < -5) {
        NetlistFile.close();
        fprintf(stderr, "Error: Could not prepare netlist %s\n", c_net);
        /// \todo better handling for error/warnings
        qCritical() << ErrText->toPlainText();
        return 1;
    }

    // output NodeSets, SPICE simulations etc.
    for(QStringList::Iterator it = Collect.begin();
    it != Collect.end(); ++it) {
        // don't put library includes into netlist...
        if ((*it).right(4) != ".lst" &&
        (*it).right(5) != ".vhdl" &&
        (*it).right(4) != ".vhd" &&
        (*it).right(2) != ".v") {
            Stream << *it << '\n';
        }
    }

    Stream << '\n';

    QString SimTime = sch->createNetlist(Stream, SimPorts);
    delete(sch);

    NetlistFile.close();

    return 0;
}

void NetlistTests::testNetlistsLoading()
{
    app = new QucsAppTest();
    QTextStream out(stdout);
    QDir dirs(QUCS_TEST_DIR);
    QString project_name;
    QFileInfoList list = dirs.entryInfoList();
    QFileInfoList schematics_list;
    QString name;
    for (int i = 0; i < list.size(); ++i) {
        project_name = list.at(i).fileName();
        if(project_name.endsWith(".prj")) {
            schematics_list =  QDir(dirs.filePath(project_name)).entryInfoList();
            for (int j = 0; j < schematics_list.size(); ++j) {
                name = schematics_list.at(j).fileName();
                if(name.endsWith(".sch")) {
                    doNetlist(
                      QDir(dirs.filePath(project_name)).filePath(name),
                      QDir(dirs.filePath(project_name)).filePath(name+".v")
                    );
                    doNetlist(
                      QDir(dirs.filePath(project_name)).filePath(name),
                      QDir(dirs.filePath(project_name)).filePath(name+".net")
                    );
                }
            }
        }
    }
}

QTEST_MAIN(NetlistTests)
