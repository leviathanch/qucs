#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include <iostream>

#include <QString>
#include <QApplication>
#include <QStringList>
#include <QTextCodec>
#include <QTranslator>
#include <QFile>
#include <QMessageBox>
#include <QRegExp>
#include <QtSvg>
#include <QDebug>

#include <stdlib.h>
#include <ctype.h>
#include <locale.h>

#include "qucs.h"
#include "node.h"
#include "printerwriter.h"
#include "imagewriter.h"

#include "components/component.h"
#include "module.h"
#include "misc.h"
#include "schematic.h"

#include "components/components.h"

#ifdef _WIN32
#include <Windows.h>  //for OutputDebugString
#endif

Schematic *openSchematic(QString schematic);
int doNetlist(QString schematic, QString netlist);
int doPrint(QString schematic, QString printFile,
    QString page, int dpi, QString color, QString orientation);
