#include "DocumentTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "."
#endif

void DocumentTests::loadDocument(QString name)
{
    qInfo() << name;
    app = new QucsAppTest();
    app->loadPRJ(name);
    /*
    Schematic *sch;
    QTextStream out(stdout);
    sch = new Schematic(app, name);
    Q_ASSERT(sch!=NULL);
    QCOMPARE(sch->symbolMode, false);
    out << "Opening " << sch->DocName << " successful" << Qt::endl;
    */
}

void DocumentTests::testDocumentLoading()
{
    QTextStream out(stdout);
    QDir dirs(QUCS_TEST_DIR);
    QString project_name;
    QFileInfoList list = dirs.entryInfoList();
    QFileInfoList schematics_list;
    QString name;
    for (int i = 0; i < list.size(); ++i) {
        project_name = list.at(i).fileName();
        if(project_name.endsWith("_prj")) {
            loadDocument(dirs.filePath(project_name));
        }
    }
}

QTEST_MAIN(DocumentTests)
