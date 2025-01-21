#include "qucs_functions.h"

#include <QDebug>
#include <QMessageLogger>
#include <QtGlobal>

/*
 * Open a given file name path and return a schematics object
 */
Schematic *openSchematic(QString inputfile)
{
  QString schematic = inputfile;
  if(!QFileInfo(inputfile).isAbsolute()) {
    schematic = QDir(QDir::currentPath()).absoluteFilePath(inputfile);
  }
  qDebug() << "*** try to load schematic :" << schematic;

  QFile file(schematic);  // save simulator messages
  if(file.open(QIODevice::ReadOnly)) {
    file.close();
  } else {
    qCritical() << "Error: Could not load schematic" << schematic;
    return NULL;
  }

  // populate Modules list
  Module::registerModules ();

  // new schematic from file
  Schematic *sch = new Schematic(0, schematic);

  // load schematic file if possible
  if(!sch->loadDocument()) {
    //qFatal() << "Error: Could not load schematic" << schematic;
    delete sch;
    return NULL;
  }
  return sch;
}

/*
 * This function converts the netlist of the schematics into
 * either Verilog or a SPICE netlist.
 */
int doNetlist(QString schematic, QString netlist)
{
  Schematic *sch = openSchematic(schematic);
  if (sch == NULL) {
    return 1;
  }

  qDebug() << "*** try to write netlist  :" << netlist;

  // QString to *char
  QByteArray ba = schematic.toLatin1();
  const char *c_net = ba.data();

  QStringList Collect;

  QPlainTextEdit *ErrText = new QPlainTextEdit();  //dummy
  QFile NetlistFile;
  QTextStream   Stream;

  Collect.clear();  // clear list for NodeSets, SPICE components etc.

  NetlistFile.setFileName(netlist);
  if(!NetlistFile.open(QIODevice::WriteOnly)) {
    fprintf(stderr, "Error: Could not load netlist %s\n", c_net);
    return -1;
  }

  Stream.setDevice(&NetlistFile);
  int SimPorts = sch->prepareNetlist(Stream, Collect, ErrText);

  if(SimPorts < -5) {
    NetlistFile.close();
    fprintf(stderr, "Error: Could not prepare netlist %s\n", c_net);
    /// \todo better handling for error/warnings
    qCritical() << ErrText->toPlainText();
    return 1;
  }

  // output NodeSets, SPICE simulations etc.
  for(QStringList::Iterator it = Collect.begin();
  it != Collect.end(); ++it) {
    // don't put library includes into netlist...
    if ((*it).right(4) != ".lst" &&
    (*it).right(5) != ".vhdl" &&
    (*it).right(4) != ".vhd" &&
    (*it).right(2) != ".v") {
      Stream << *it << '\n';
    }
  }

  Stream << '\n';

  QString SimTime = sch->createNetlist(Stream, SimPorts);
  delete(sch);

  NetlistFile.close();

  return 0;
}

/*
 * This function writes out an image in either SVG or PNG format
 * or alternatively can generate a PDF visually depicting the circuit.
 */
int doPrint(QString schematic, QString printFile,
    QString page, int dpi, QString color, QString orientation)
{
  Schematic *sch = openSchematic(schematic);
  if (sch == NULL) {
    return 1;
  }

  sch->Nodes = &(sch->DocNodes);
  sch->Wires = &(sch->DocWires);
  sch->Diagrams = &(sch->DocDiags);
  sch->Paintings = &(sch->DocPaints);
  sch->Components = &(sch->DocComps);
  sch->reloadGraphs();

  qDebug() << "*** try to print file  :" << printFile;

  // determine filetype
  if (printFile.endsWith(".pdf")) {
    //initial printer
    PrinterWriter *Printer = new PrinterWriter();
    Printer->setFitToPage(true);
    Printer->noGuiPrint(sch, printFile, page, dpi, color, orientation);
  } else {
    ImageWriter *Printer = new ImageWriter("");
    Printer->noGuiPrint(sch, printFile, color);
  }
  return 0;
}

/*
 * Exporting the schematics to an output file with the format based
 * on the suffix of the file name.
 */
int doDump(QString inputfile, QString outputfile, QString outputtype)
{
    Schematic *sch = openSchematic(inputfile);
    if (sch == NULL) {
      return 1;
    }
    sch->saveAs(outputfile,outputtype);
    return 0;
}
