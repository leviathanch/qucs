#include "SignalTests.h"

#ifndef QUCS_TEST_DIR
#define QUCS_TEST_DIR "."
#endif

void SignalTests::testSchematicsLoading()
{
    QTextStream out(stdout);
    QDir dirs(QUCS_TEST_DIR);
    QString project_name;
    QFileInfoList list = dirs.entryInfoList();
    QFileInfoList schematics_list;
    QString name;
    QStringList files;
    for (int i = 0; i < list.size(); ++i) {
        project_name = list.at(i).fileName();
        if(project_name.endsWith(".prj")) {
            schematics_list =  QDir(dirs.filePath(project_name)).entryInfoList();
            for (int j = 0; j < schematics_list.size(); ++j) {
                name = schematics_list.at(j).fileName();
                if(name.endsWith(".sch")) {
                    files.clear();
                    files.append(QDir(dirs.filePath(project_name)).filePath(name));
                    app = getApp(files);
                    //app->testBuildModule();
                }
            }
        }
    }
}

QTEST_MAIN(SignalTests)
