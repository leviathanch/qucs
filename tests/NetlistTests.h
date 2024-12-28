//#include "qucs.h"
#include "QucsAppTest.h"
#include "schematic.h"
#include "module.h"

#include <QDir>
#include <QTest>
#include <QApplication>
#include <QTextStream>
#include <QObject>
#include <QPlainTextEdit>

class NetlistTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;
    Schematic *openSchematic(QString schematic);
    int doNetlist(QString schematic, QString netlist);

private slots:
    void testNetlistsLoading();
};
