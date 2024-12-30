#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include "qucs_functions.h"

#include <QTest>

class QucsAppTest : public QucsApp {
public:
    QucsAppTest();
    void testBuildModule();
    void load();
    void loadPRJ(QString name);
};
