#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include "qucs.h"
#include "schematic.h"
#include "module.h"
#include "misc.h"

#include <QDir>
#include <QTest>
#include <QApplication>
#include <QTextStream>
#include <QObject>

class QucsAppTest : public QucsApp {
public:
    QucsAppTest();
    void testBuildModule();
    void load();
    void loadPRJ(QString name);
};
