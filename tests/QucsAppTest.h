#include "qucs.h"
#include "schematic.h"
#include "module.h"

#include <QDir>
#include <QTest>
#include <QApplication>
#include <QTextStream>
#include <QObject>

class QucsAppTest : public QucsApp {
public:
    void testBuildModule();
    void load();
    void loadPRJ(QString name);
};
