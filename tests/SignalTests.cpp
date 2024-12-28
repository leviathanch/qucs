#include "SignalTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "."
#endif

Schematic *SignalTests::openSchematic(QString schematic)
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

void SignalTests::testSchematicsLoading()
{
    QTextStream out(stdout);
    Schematic *sch;
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
                    app = new QucsAppTest();
                    sch = openSchematic(QDir(dirs.filePath(project_name)).filePath(name));
                    app->testBuildModule();
                }
            }
        }
    }
}

QTEST_MAIN(SignalTests)
