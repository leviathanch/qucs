#include "QucsAppTest.h"

class SignalTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;
    void loadSchematics(QString);

private slots:
    void testSchematicsLoading();
    void testCreatingSchematics();
};
