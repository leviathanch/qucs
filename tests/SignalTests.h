#include "QucsAppTest.h"

class SignalTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;

private slots:
    void testSchematicsLoading();
};
