#include "QucsAppTest.h"

#include <QDir>
#include <QTest>
#include <QApplication>
#include <QTextStream>
#include <QObject>

class DocumentTests : public QObject {
    Q_OBJECT

private:
    QucsAppTest *app;
    void loadDocument(QString);

private slots:
    void testDocumentLoading();
};
