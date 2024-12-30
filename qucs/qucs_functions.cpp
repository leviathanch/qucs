#include "qucs_functions.h"

Schematic *openSchematic(QString schematic)
{
  qDebug() << "*** try to load schematic :" << schematic;

  // QString to *char
  QByteArray ba = schematic.toLatin1();
  const char *c_sch = ba.data();

  QFile file(schematic);  // save simulator messages
  if(file.open(QIODevice::ReadOnly)) {
    file.close();
  }
  else {
    fprintf(stderr, "Error: Could not load schematic %s\n", c_sch);
    return NULL;
  }

  // populate Modules list
  Module::registerModules ();

  // new schematic from file
  Schematic *sch = new Schematic(0, schematic);

  // load schematic file if possible
  if(!sch->loadDocument()) {
    fprintf(stderr, "Error: Could not load schematic %s\n", c_sch);
    delete sch;
    return NULL;
  }
  return sch;
}

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
