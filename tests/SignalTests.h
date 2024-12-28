#include "QucsAppTest.h"

class SignalTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;
    Schematic *openSchematic(QString schematic);

private slots:
    void testSchematicsLoading();
};
