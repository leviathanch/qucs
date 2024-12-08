#include "QucsAppTest.h"

void QucsAppTest::testBuildModule()
{
    slotBuildModule();
}

void QucsAppTest::load()
{
    QucsDoc* doc = 0;
    doc = getDoc(0);
    if(doc) {
        doc->load();
    }
}

void QucsAppTest::loadPRJ(QString name)
{
    openProject(name);
}

QucsAppTest::QucsAppTest(QStringList files) : QucsApp(files)
{
}

QucsAppTest * getApp(QStringList files)
{
    QucsVersion = VersionTriplet(PACKAGE_VERSION);
    QucsAppTest *app = new QucsAppTest(files);
    return app;
}
