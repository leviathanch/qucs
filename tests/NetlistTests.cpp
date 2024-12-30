#include "NetlistTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "../../tests"
#endif

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
                    ::doNetlist(
                      QDir(dirs.filePath(project_name)).filePath(name),
                      QDir(dirs.filePath(project_name)).filePath(name+".new.v")
                    );
                    ::doNetlist(
                      QDir(dirs.filePath(project_name)).filePath(name),
                      QDir(dirs.filePath(project_name)).filePath(name+".new.net")
                    );
                }
            }
        }
    }
}

QTEST_MAIN(NetlistTests)
