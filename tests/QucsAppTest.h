#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include "qucs_functions.h"

#include <QTest>

class QucsAppTest : public QucsApp {
public:
    QucsAppTest(QStringList files);
    void testBuildModule();
    void load();
    void loadPRJ(QString name);
};

QucsAppTest * getApp(QStringList files);
