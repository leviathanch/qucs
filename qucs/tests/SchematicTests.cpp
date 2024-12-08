#include "SchematicTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "."
#endif

void SchematicTests::loadSchematics(QString name)
{
    Schematic *sch;
    QTextStream out(stdout);
    //out << name << Qt::endl;
    sch = new Schematic(app, name);
    Q_ASSERT(sch!=NULL);
    QCOMPARE(sch->symbolMode, false);
    out << "Loading " << sch->DocName << " successful" << Qt::endl;
}

void SchematicTests::testCreatingSchematics()
{
    app = new QucsApp();
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
    app = new QucsApp();
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
                    loadSchematics(QDir(dirs.filePath(project_name)).filePath(name));
                }
            }
        }
    }
}

QTEST_MAIN(SchematicTests)
