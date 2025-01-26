#define TRACE_FUNCTION_CALLS 0

#ifdef HAVE_CONFIG_H
# include <config.h>
#endif
#include <iostream>

#include <QtCore>
#include <QMessageBox>
#include <QDir>
#include <QStringList>
#include <QPlainTextEdit>
#include <QTextStream>
#include <QList>
#include <QProcess>
#include <QDebug>

#include "qucs.h"
#include "node.h"
#include "schematic.h"
#include "diagrams/diagrams.h"
#include "paintings/paintings.h"
#include "components/spicefile.h"
#include "components/vhdlfile.h"
#include "components/verilogfile.h"
#include "components/libcomp.h"
#include "module.h"
#include "misc.h"

#if TRACE_FUNCTION_CALLS
#define trace_method_calls() qInfo()<<__FILE__ <<":"<<__func__
#else
#define trace_method_calls() {}
#endif

/*

We wanna print out something in the following form.
It's not yet Verilog AMS neither is it Verilog-A, but
our own little Verilog schematics hacking.

(* qucs_symbol="capacitor.svg" *)
module capacitor(p, n);
(* x=0, y=0 *) inout p;
(* x=10, y=0 *) inout n;
[..]
endmodule

*/

void Schematic::dumpVerilogSchematicComponent(QTextStream *stream, Component c)
{
  QStringList port_list;
  QStringList nets;
  QString net;
  QString model = c.obsolete_model_hack();
  QString name = c.name();
  int port_idx = 0;
  for (auto pp = c.Ports.begin(); pp != c.Ports.end(); ++pp) {
    auto con = pp->getConnection();
    if(con) {
      port_list.append(QString("S0_x%1=%2, S0_y%1=%3")
          .arg(++port_idx)
          .arg(con->cx)
          .arg(con->cy));
      net = QString("n_%1_%2").arg(con->cx).arg(con->cy);
      net.replace("-","m");
      nets.append(net);
    }
  }
  if(!name.size()) {
    name = QString("\\");
  } else if(!name[0].isDigit() && !name[0].isLetter() && (name[0] != '_')) {
    name = QString("\\") + name;
  }
  *stream << QString("    ");
  *stream << QString("(* %1 *) %2 %3 (%4);\n")
      .arg(port_list.join(", "))
      .arg(model)
      .arg(name)
      .arg(nets.join(", "));
}

int Schematic::saveVerilogDocument(QFile *file)
{
  trace_method_calls();
  QStringList wireList;
  QStringList ioPorts;
  QStringList ioPortNets;

  for (auto it = DocComps.begin(); it != DocComps.end(); ++it) {
    if(it->obsolete_model_hack() == "Port") {
      QString net = QString("n_%1_%2")
          .arg(it->cx)
          .arg(it->cy);
      net.replace("-","m");
      ioPorts.append(QString(".%1(%2)").arg(it->name()).arg(net));
      ioPortNets.append(net);
    }
  }

  /*
   * <280 100 460 100 "" 0 0 0> == net w1(n_280_100, n_460_100);
   */
  QString netString;
  int wire_index = 0;
  for (auto it = DocWires.begin(); it != DocWires.end(); ++it) {
    QString name_label;
    QString net1, net2;
    if(it->Label && !it->Label->Name.isEmpty()) {
      name_label = it->Label->Name;
    } else {
      name_label = QString("net%1").arg(wire_index);
      wire_index++;
    }
    net1= QString("n_%1_%2").arg(it->x1).arg(it->y1);
    net2 = QString("n_%1_%2").arg(it->x2).arg(it->y2);
    wireList.append(net1);
    wireList.append(net2);
    netString += QString("    ");
    netString += QString("(* S0_x1=%1, S0_y1=%2, S0_x2=%3, S0_y2=%4 *) net %5(%6, %7);\n")
        .arg(it->x1)
        .arg(it->y1)
        .arg(it->x2)
        .arg(it->y2)
        .arg(name_label)
        .arg(net1)
        .arg(net2);
  }

  wireList.removeDuplicates();
  wireList.sort();

  // Writing stuff out
  QTextStream stream(file);
  QString module_name = QFileInfo(DocName).baseName();
  if(DocName.contains(".prj_")) {
    module_name = DocName.split(".prj_").at(1);
    module_name.replace(".sch","");
    module_name.replace(".vs","");
  }
  stream << "module " << module_name << "(" << ioPorts.join(", ") << ");\n";

  // io defines
  for (auto it = ioPortNets.begin(); it != ioPortNets.end(); ++it) {
    stream << "    inout " << *it << ";\n";
  }

  // The wires (subnets)
  for (auto it = wireList.begin(); it != wireList.end(); ++it) {
    if(!ioPortNets.contains(*it)) {
      stream << "    wire " << *it << ";\n";
    }
  }

  // sub components
  for (auto it = DocComps.begin(); it != DocComps.end(); ++it) {
    dumpVerilogSchematicComponent(&stream, *it);
  }

  // net connections (connecting the nodes)
  stream << netString;

  // done
  stream << "endmodule\n";
  stream.flush();
  file->flush();
  file->close();
  delete file;
  file = NULL;
  return 0;
}

// -------------------------------------------------------------
// Returns the number of subcircuit ports.
int Schematic::saveSchematicDocument(QFile *file)
{
  trace_method_calls();

  QTextStream stream(file);

  stream << "<Qucs Schematic " << PACKAGE_VERSION << ">\n";

  stream << "<Properties>\n";
  if(symbolMode) {
    stream << "  <View=" << tmpViewX1<<","<<tmpViewY1<<","
       << tmpViewX2<<","<<tmpViewY2<< ",";
    stream <<tmpScale<<","<<tmpPosX<<","<<tmpPosY << ">\n";
  }
  else {
    stream << "  <View=" << ViewX1<<","<<ViewY1<<","
       << ViewX2<<","<<ViewY2<< ",";
    stream << Scale <<","<<contentsX()<<","<<contentsY() << ">\n";
  }
  stream << "  <Grid=" << GridX<<","<<GridY<<","
      << GridOn << ">\n";
  stream << "  <DataSet=" << DataSet << ">\n";
  stream << "  <DataDisplay=" << DataDisplay << ">\n";
  stream << "  <OpenDisplay=" << SimOpenDpl << ">\n";
  stream << "  <Script=" << Script << ">\n";
  stream << "  <RunScript=" << SimRunScript << ">\n";
  stream << "  <showFrame=" << showFrame << ">\n";

  QString t;
  misc::convert2ASCII(t = Frame_Text0);
  stream << "  <FrameText0=" << t << ">\n";
  misc::convert2ASCII(t = Frame_Text1);
  stream << "  <FrameText1=" << t << ">\n";
  misc::convert2ASCII(t = Frame_Text2);
  stream << "  <FrameText2=" << t << ">\n";
  misc::convert2ASCII(t = Frame_Text3);
  stream << "  <FrameText3=" << t << ">\n";
  stream << "</Properties>\n";

  stream << "<Symbol>\n";     // save all paintings for symbol
  for(auto pp = SymbolPaints.begin(); pp != SymbolPaints.end(); ++pp)
    stream << "  <" << pp->save() << ">\n";
  stream << "</Symbol>\n";

  stream << "<Components>\n";    // save all components
  for(auto pc = DocComps.begin(); pc != DocComps.end(); ++pc) {
    stream << "  "; // BUG language specific.
    saveComponent(stream, pc.operator->());
    stream << "\n"; // BUG?
  }
  stream << "</Components>\n";

  stream << "<Wires>\n";    // save all wires
  for(auto pw = DocWires.begin(); pw != DocWires.end(); ++pw) {
    stream << "  " << pw->save() << "\n";
  }

  // save all labeled nodes as wires
  for(auto pn = DocNodes.begin(); pn != DocNodes.end(); ++pn) {
    if(pn->Label) stream << "  " << pn->Label->save() << "\n";
  }
  stream << "</Wires>\n";

  stream << "<Diagrams>\n";    // save all diagrams
  for(auto pd = DocDiags.begin(); pd != DocDiags.end(); ++pd) {
    stream << "  " << pd->save() << "\n";
  }
  stream << "</Diagrams>\n";

  stream << "<Paintings>\n";     // save all paintings
  for(auto pp = DocPaints.begin(); pp != DocPaints.end(); ++pp) {
    stream << "  <" << pp->save() << ">\n";
  }
  stream << "</Paintings>\n";

  file->flush();
  file->close();
  delete file;
  file = NULL;

  // additionally save symbol C++ code if in a symbol drawing and the
  // associated file is a Verilog-A file
  if (fileSuffix () == "sym") {
    if (fileSuffix (DataDisplay) == "va") {
      saveSymbolCpp ();
      saveSymbolJSON ();

      // TODO slit this into another method, or merge into saveSymbolJSON
      // handle errors in separate
      qDebug() << "  -> Run adms for symbol";

      QString vaFile;

//      QDir prefix = QDir(QucsSettings.BinDir);

      QDir include = QDir(QucsSettings.BinDir+"../include/qucs-core");

      //pick admsXml from settings
      QString admsXml = QucsSettings.AdmsXmlBinDir.canonicalPath();

#ifdef __MINGW32__
      admsXml = QDir::toNativeSeparators(admsXml+"/"+"admsXml.exe");
#else
      admsXml = QDir::toNativeSeparators(admsXml+"/"+"admsXml");
#endif
      // BUG: duplicated from qucs_actions.cpp
      char const* var = getenv("QUCS_USE_PATH");
      if(var != NULL) {
  // just use PATH. this is currently bound to a contition, to maintain
  // backwards compatibility with QUCSDIR
  qDebug() << "QUCS_USE_PATH";
  admsXml = "admsXml";
      }else{
      }

      QString workDir = QucsSettings.QucsWorkDir.absolutePath();

      qDebug() << "App path : " << qApp->applicationDirPath();
      qDebug() << "workdir"  << workDir;
      qDebug() << "homedir"  << QucsSettings.QucsHomeDir.absolutePath();
      qDebug() << "projsdir"  << QucsSettings.projsDir.absolutePath();

      vaFile = QucsSettings.QucsWorkDir.filePath(fileBase()+".va");

      QStringList Arguments;
      Arguments << QDir::toNativeSeparators(vaFile)
                << "-I" << QDir::toNativeSeparators(include.absolutePath())
                << "-e" << QDir::toNativeSeparators(include.absoluteFilePath("qucsMODULEguiJSONsymbol.xml"))
                << "-A" << "dyload";

//      QProcessEnvironment env = QProcessEnvironment::systemEnvironment();

      QFile file(admsXml);
      if(var) {
  // don't do this. it will always report an error.
      }else if ( !file.exists() ){
        QMessageBox::critical(this, tr("Error"),
                              tr("Program admsXml not found: %1\n\n"
                                  "Set the admsXml location on the application settings.").arg(admsXml));
        return -1;
      }

      qDebug() << "Command: " << admsXml << Arguments.join(" ");

      // need to cd into project to run admsXml?
      QDir::setCurrent(workDir);

      QProcess builder;
      builder.setProcessChannelMode(QProcess::MergedChannels);

      builder.start(admsXml, Arguments);


      // how to capture [warning]? need to modify admsXml?
      // TODO put stdout, stderr into a dock window, not messagebox
      if (!builder.waitForFinished()) {
        QString cmdString = QString("%1 %2\n\n").arg(admsXml, Arguments.join(" "));
        cmdString = cmdString + builder.errorString();
        QMessageBox::critical(this, tr("Error"), cmdString);
      }
      else {
        QString cmdString = QString("%1 %2\n\n").arg(admsXml, Arguments.join(" "));
        cmdString = cmdString + builder.readAll();
        QMessageBox::information(this, tr("Status"), cmdString);
      }

      // Append _sym.json into _props.json, save into _symbol.json
      QFile f1(QucsSettings.QucsWorkDir.filePath(fileBase()+"_props.json"));
      QFile f2(QucsSettings.QucsWorkDir.filePath(fileBase()+"_sym.json"));
      f1.open(QIODevice::ReadOnly | QIODevice::Text);
      f2.open(QIODevice::ReadOnly | QIODevice::Text);

      QString dat1 = QString(f1.readAll());
      QString dat2 = QString(f2.readAll());
      QString finalJSON = dat1.append(dat2);

      // remove joining point
      finalJSON = finalJSON.replace("}{", "");

      QFile f3(QucsSettings.QucsWorkDir.filePath(fileBase()+"_symbol.json"));
      f3.open(QIODevice::WriteOnly | QIODevice::Text);
      QTextStream out(&f3);
      out << finalJSON;

      f1.close();
      f2.close();
      f3.close();

      // TODO choose icon, default to something or provided png

    } // if DataDisplay va
  } // if suffix .sym

  return 0;
}

// Decide whether we wanna generate Verilog or a Schematic file
int Schematic::saveDocument(QString OutputFileName, QString OutputTypeName)
{
  trace_method_calls();
  if(OutputFileName.isEmpty())
    OutputFileName = DocName;

  QFile *file = new QFile(OutputFileName);
  if(!file->open(QIODevice::WriteOnly)) {
    QMessageBox::critical(0, QObject::tr("Error"),
        QObject::tr("Cannot save document!"));
    delete file;
    return -1;
  }
  if(QFileInfo(OutputFileName).suffix()=="sch" || OutputTypeName=="sch") {
      return saveSchematicDocument(file);
  }
  if(QFileInfo(OutputFileName).suffix()=="vs" || OutputTypeName=="vs") {
      return saveVerilogDocument(file);
  }
  QMessageBox::critical(0, QObject::tr("Error"),
      QObject::tr("Cannot save document: File format not supported!"));
  return -1;
}
