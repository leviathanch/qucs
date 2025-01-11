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

/*
 * Open a given file name path and return a schematics object
 */
Schematic *openSchematic(QString schematic);

/*
 * This function converts the netlist of the schematics into
 * either Verilog or a SPICE netlist.
 */
int doNetlist(QString schematic, QString netlist);

/*
 * This function writes out an image in either SVG or PNG format
 * or alternatively can generate a PDF visually depicting the circuit.
 */
int doPrint(QString schematic, QString printFile,
    QString page, int dpi, QString color, QString orientation);

/*
 * Exporting the schematics to an output file with the format based
 * on the suffix of the file name.
 */
int doDump(QString inputfile, QString outputfile, QString outputtype);
