#include "qucs.h"
#include "schematic.h"

#include <QDir>
#include <QTest>
#include <QApplication>
#include <QTextStream>
#include <QObject>

class SchematicTests : public QObject {
    Q_OBJECT

private:
    QucsApp *app;
    void loadSchematics(QString);

private slots:
    void testSchematicsLoading();
    void testCreatingSchematics();
};
