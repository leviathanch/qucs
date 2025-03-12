#define TRACE_FUNCTION_CALLS 1

#ifdef HAVE_CONFIG_H
# include <config.h>
#endif
#include <iostream>

#include <QMessageBox>
#include <QDir>
#include <QStringList>
#include <QPlainTextEdit>
#include <QTextStream>
#include <QList>
#include <QProcess>
#include <QDebug>

#include "ap.h"
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
#include "trace.h"
#include "exception.h"
#include "components.h"

#if TRACE_FUNCTION_CALLS
#define trace_method_calls() qInfo()<<__FILE__ <<":"<<__func__
#else
#define trace_method_calls() {}
#endif

void Schematic::readLegacy(QTextStream &stream) {
  trace_method_calls();
  QString Line;
  while(!stream.atEnd()) {
    Line = stream.readLine();
    Line = Line.trimmed();
    if(Line.isEmpty()) continue;
    if(Line == "<Symbol>") {
      if(!loadPaintings(&stream, SymbolPaints)) {
        incomplete(); break;
      }
    }
    else
    if(Line == "<Properties>") {
      if(!loadProperties(&stream)) { incomplete(); break; } }
    else
    if(Line == "<Components>") {
      if(!loadComponents(&stream)) { incomplete(); break; } }
    else
    if(Line == "<Wires>") {
      if(!loadWires(&stream)) { incomplete(); break; } }
    else
    if(Line == "<Diagrams>") {
      if(!loadDiagrams(&stream, DocDiags)) { incomplete(); break; } }
    else
    if(Line == "<Paintings>") {
      if(!loadPaintings(&stream, DocPaints)) { incomplete(); break; } }
    else {
      qDebug() << Line;
      QMessageBox::critical(0, QObject::tr("Error"),
      QObject::tr("File Format Error:\nUnknown field!"));
      incomplete(); break;
    }
  }
}

void Schematic::readVerilog(QTextStream &stream)
{
  trace_method_calls();
  stream.reset();
  CS cmd(&stream);
  //std::cout << "Dummy read" << std::endl;
  //std::cout << "-------------" << std::endl;
  while(!cmd.atEnd()) {
    cmd.read_line();
    skip_attributes(cmd);
    if(cmd>>"module") {
      //ignore for now;
    }else if(cmd>>"endmodule"){
      //ignore for now;
    }else{
      std::string type;
      cmd >> type;
      if(type=="wire") continue; // BUG: Not a component
      if(type=="net") {
        std::shared_ptr<Wire> w(new Wire(0,0,0,0, (Node*)4,(Node*)4));
        if(w) {
          parse_wire(cmd, w);
          simpleInsertWire(w);
        }
      } else {
        QString qtype = QString::fromStdString(type);
        auto x = Module::getComponent(qtype);
        if(x) {
          parse_instance(cmd, x);
          simpleInsertComponent(x);
        }
      }
    }
  }
}
