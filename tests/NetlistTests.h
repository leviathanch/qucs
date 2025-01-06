#include "QucsAppTest.h"

class NetlistTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;

private slots:
    void testNetlistsLoading();
};
