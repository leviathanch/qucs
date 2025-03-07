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

void Schematic::skip_attributes(CS& cmd)
{
  while (cmd >> "(*") {
    cmd.skipto1('*') && (cmd >> "*)");
  }
}

Component *Schematic::get_component(std::string)
{
  incomplete();
  Component *c = new Component();
  c->isActive = 1;
  return c;
}

void Schematic::parse_attributes(CS& cmd, Component* x)
{
  assert(x);
  incomplete();
  while (cmd >> "(*") {
    std::string attrib_string;
    while(cmd.ns_more() && !(cmd >> "*)")) {
      attrib_string += cmd.ctoc();
    }
    x->set_attributes(attrib_string);
  }
}

void Schematic::parse_type(CS& cmd, Component* x)
{
  assert(x);
  //incomplete();
  std::string new_type;
  cmd >> new_type;
  x->set_dev_type(new_type);
}

void Schematic::parse_args_instance(CS& cmd, Component* x)
{
  assert(x);
  if (cmd >> "#(") {
    if (cmd.match1('.')) {
      // by name
      while (cmd >> '.') {
        size_t here = cmd.cursor();
        std::string name  = cmd.ctos("(", "", "");
        std::string value = cmd.ctos(",)", "(", ")");
        cmd >> ',';
        try{
          //trace2("pai", name, value);
          x->set_param_by_name(name, value);
        }catch (qucs::ExceptionNoMatch&) {untested();
          cmd.warn(0, here, x->name().toStdString() + ": bad parameter " + name + " ignored");
        }
      }
    }else{
      // by order
      int index = 1;
      while (cmd.is_alnum() || cmd.match1("+-.")) { untested();
        size_t here = cmd.cursor();
        try{ untested();
          std::string value = cmd.ctos(",)", "", "");
          //trace2("pai", index, value);
          x->set_param_by_index(x->param_count() - index++, value); // , 0/*offset*/);
        }catch (qucs::Exception_Too_Many& e) {untested();
          cmd.warn(bDANGER, here, e.message());
        }
      }
    }
    cmd >> ')';
  }else{ untested();
    // no args
  }
}

void Schematic::parse_label(CS &cmd, Component *x)
{
  assert(x);
  std::string my_name;
  if (cmd >> my_name) {
    x->set_label(my_name);
  }else{ untested();
    //x->set_label(x->id_letter() + std::string("_unnamed")); //BUG// not unique
    x->set_label(std::string("_unnamed")); //BUG// not unique
    cmd.warn(bDANGER, "label required");
  }
}

void Schematic::parse_ports(CS& cmd, Component* x, bool all_new)
{
  assert(x);
  if (cmd >> '(') {
    if (cmd.is_alnum()) {
      // by order
      int index = 0;
      while (cmd.is_alnum()) {
        size_t here = cmd.cursor();
        try{
          std::string value;
          cmd >> value;
          x->set_port_by_index(index, value);
          if (all_new) {
            //    if (x->node_is_grounded(index)) { untested();
            //      cmd.warn(bDANGER, here, "node 0 not allowed here");
            //    }else
            //if (x->subckt() && int(x->subckt()->nodes()->size()) != index+1) { untested();
            //  cmd.warn(bDANGER, here, "duplicate port name, skipping");
            //}else{
              ++index;
            //}
          }else{
            ++index;
          }
        }catch (qucs::Exception_Too_Many& e) { untested();
          cmd.warn(bDANGER, here, e.message());
        }
      }
//			if (index < x->min_nodes()) { untested();
//				cmd.warn(bDANGER, "need " + to_string(x->min_nodes()-index) +" more nodes, grounding");
//				for (int iii = index;  iii < x->min_nodes();  ++iii) { untested();
//					x->set_port_to_ground(iii);
//				}
//			}else{ untested();
//			}
    }else{
      // by name
      while (cmd >> '.') { untested();
        size_t here = cmd.cursor();
        try{ untested();
          std::string name, value;
          cmd >> name >> '(' >> value >> ')' >> ',';
          x->set_port_by_name(name, value);
        }catch (qucs::ExceptionNoMatch const&) {untested();
          cmd.warn(bDANGER, here, "mismatch, ignored");
        }
      }
//			for (int iii = 0;  iii < x->min_nodes();  ++iii) { untested();
//				if (!(x->node_is_connected(iii))) {untested();
//					cmd.warn(bDANGER, x->port_name(iii) + ": port unconnected, grounding");
//					x->set_port_to_ground(iii);
//				}else{ untested();
//				}
//			}
    }
    cmd >> ')';
  }else{ untested();
    cmd.warn(bDANGER, "'(' required (parse ports) (grounding)");
    incomplete();
//		for (int iii = 0;  iii < x->min_nodes();  ++iii) { untested();
//			if (!(x->node_is_connected(iii))) { untested();
//				cmd.warn(bDANGER, x->port_name(iii) + ": port unconnected, grounding");
//				x->set_port_to_ground(iii);
//			}else{ untested();
//				unreachable();
//			}
//		}
  }
}

Component *Schematic::parse_instance(CS& cmd, Component* x)
{
  assert(x);
  cmd.reset();
  parse_attributes(cmd, x);
  parse_type(cmd, x);
  parse_args_instance(cmd, x);
  parse_label(cmd, x);
  parse_ports(cmd, x, false/*allow dups*/);
  cmd >> ';';
  cmd.check(0, "what's this?");
  return x;
}

void Schematic::readVerilog(QTextStream &stream)
{
  trace_method_calls();
  stream.reset();
  CS cmd(&stream);
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
      Component*x=get_component(type);
      if(type!="net" && type!="wire") { // BUG: Wire and nets aren't components
        parse_instance(cmd, x);
        DocComps.append(x);
      }
    }
  }
}
