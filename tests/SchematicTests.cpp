#include "SchematicTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "../../tests"
#endif

Schematic *SchematicTests::openSchematic(QString schematic)
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

void SchematicTests::testCreatingSchematics()
{
    app = new QucsAppTest();
    Schematic *sch;
    QString name = QString("");
    sch = new Schematic(app, name);
    Q_ASSERT(sch!=NULL);
    QCOMPARE(sch->symbolMode, false);
    // go up to QucsDoc, empy name
    QCOMPARE(sch->DocName, name);

    name = QString("DocumentName");
    sch = new Schematic(app, name);
    Q_ASSERT(sch!=NULL);
    // go up to QucsDoc, make up name with absolute path
    QFileInfo Info(name);

    QCOMPARE(sch->DocName, Info.absoluteFilePath());
}

void SchematicTests::testSchematicsLoading()
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
                    openSchematic(QDir(dirs.filePath(project_name)).filePath(name));
                }
            }
        }
    }
}

QTEST_MAIN(SchematicTests)
