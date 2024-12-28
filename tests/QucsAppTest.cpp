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

QucsAppTest::QucsAppTest() : QucsApp()
{
    QucsVersion = VersionTriplet(PACKAGE_VERSION);
}
