#include "QucsAppTest.h"

class DocumentTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;
    void loadDocument(QString);

private slots:
    void testDocumentLoading();
};
