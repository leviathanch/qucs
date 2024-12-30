#include "QucsAppTest.h"

class SchematicTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;

private slots:
    void testSchematicsLoading();
    void testCreatingSchematics();
};
