#include "QucsAppTest.h"

#include <QDir>
#include <QTest>
#include <QApplication>
#include <QTextStream>
#include <QObject>

class SchematicTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;
    Schematic *openSchematic(QString schematic);

private slots:
    void testSchematicsLoading();
    void testCreatingSchematics();
};
