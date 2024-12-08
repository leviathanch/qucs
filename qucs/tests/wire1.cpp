// A test
// (c) 2020 Felix Salfelder
// GPLv3+

#include "command.h"
#include "conductor.h"
#include "element_list.h"
#include "qucs_globals.h"
#include "sckt_base.h"
#include "wiretest.h"

void union0()
{
	//     |        __  |
	//     |  ->  -[__]-o
	//     |            |
	Component* root = device_dispatcher.clone("subckt_proto");
	assert(root);
	assert(root->scope());
	ElementList& M = *root->scope();

	auto wp = symbol_dispatcher["Wire"];
	auto w0 = prechecked_cast<Symbol*>(wp->clone());
	w0->set_param_by_name(std::string("deltay"), "100");
	w0->set_param_by_name(std::string("$xposition"), "30");
	w0->set_param_by_name(std::string("$yposition"), "-50");

	wp = symbol_dispatcher["R"];
	assert(dynamic_cast<Symbol const*>(wp));
	assert(wp);
	auto g0 = prechecked_cast<Symbol*>(wp->clone());
	trace1("DBG", g0->nodePosition(0));
	trace1("DBG", g0->nodePosition(1));

	assert(g0->nodePosition(0) == pos_t(-30, 0));
	assert(g0->nodePosition(1) == pos_t(30, 0));

	connect_push(root, w0);
	assert(numWires(M) == 1);
	assert(M.nodeCount() == 2);

	auto c = dynamic_cast<Conductor const*>(w0);
	trace0("nu...");
	auto nu = c->newUnion(g0);
	trace0("nu done");

	assert(nu);
	assert(nu->subckt());
	ElementList const* s = nu->subckt();
	assert(s);
	trace1("gnd", numWires(*s));
	assert(numWires(*s)==2);

	auto ii = s->begin();
	assert(ii != s->end());
	trace1("found", (*ii)->short_label());
	trace1("found", (*ii)->dev_type());
	auto a = prechecked_cast<Symbol const*>(*ii);
	assert(a); // resistor.
	++ii;
	a = prechecked_cast<Symbol const*>(*ii);

	assert(a->nodePosition(0) == pos_t(30, -50));
	assert(a->nodePosition(1) == pos_t(30, 0));
	++ii;
	assert(ii != s->end());
	a = prechecked_cast<Symbol const*>(*ii);
	assert(a);
	assert(a->nodePosition(0) == pos_t(30, 0));
	assert(a->nodePosition(1) == pos_t(30, 50));
	++ii;
	assert(ii == s->end());

	assert(M.size()==3);
	delete root;
}

void union1()
{
	trace0("union1");

	// |         |
	// |   =>    |
	// |      ---o---
	Component* root = device_dispatcher.clone("subckt_proto");
	assert(root);
	assert(root->scope());
	ElementList& M = *root->scope();

	auto wp = symbol_dispatcher["Wire"];
	auto w0 = prechecked_cast<Symbol*>(wp->clone());
	w0->set_param_by_name(std::string("deltay"), "100");

	auto w1 = prechecked_cast<Symbol*>(wp->clone());
	w1->set_param_by_name(std::string("deltax"), "100");
	w1->set_param_by_name(std::string("$xposition"), "-50");

	connect_push(root, w0);
	assert(numWires(M) == 1);
	assert(M.nodeCount() == 2);

	auto c = dynamic_cast<Conductor const*>(w0);
	trace0("union...");
	auto w = c->newUnion(w1);
	trace0("union done");

	assert(w);
	assert(w->subckt());
	trace1("gnd", numWires(*w->subckt()));
	assert(numWires(*w->subckt())==3);
	assert(w->subckt()->size()==3);
	delete root;
}

void union2()
{
	trace0("union1");
	//                |
	//          =>    |
	// ------      ---o---
	Component* root = device_dispatcher.clone("subckt_proto");
	assert(root);
	assert(root->scope());
	ElementList& M = *root->scope();

	auto wp=symbol_dispatcher["Wire"];

	auto w0 = prechecked_cast<Symbol*>(wp->clone());
	w0->set_param_by_name(std::string("deltax"), "100");
	w0->set_param_by_name(std::string("$xposition"), "-50");
	connect_push(root, w0);
	assert(numWires(M) == 1);
	assert(M.nodeCount() == 2);

	auto w1 = prechecked_cast<Symbol*>(wp->clone());
#if 1
	w1->set_param_by_name(std::string("deltay"), "100");
#else
	w1->set_param_by_name(std::string("$yposition"), "-100");
	w1->set_param_by_name(std::string("deltay"), "100");
#endif

	auto c = dynamic_cast<Conductor const*>(w0);
	auto w = c->newUnion(w1);

	assert(w);
	assert(w->subckt());
	trace1("gnd", numWires(*w->subckt()));
	assert(numWires(*w->subckt())==3);
	assert(w->subckt()->size()==3);
	delete root;
}

void union3()
{
	//     __           __  |
	//   -[__]-   ->  -[__]-o
	//                      |
	Component* root = device_dispatcher.clone("subckt_proto");
	assert(root);
	assert(root->scope());
	ElementList& M = *root->scope();

	auto wp = symbol_dispatcher["Wire"];
	auto w0 = prechecked_cast<Symbol*>(wp->clone());
	w0->set_param_by_name(std::string("deltay"), "100");
	w0->set_param_by_name(std::string("$xposition"), "30");
	w0->set_param_by_name(std::string("$yposition"), "-50");

	wp = symbol_dispatcher["R"];
	assert(dynamic_cast<Symbol const*>(wp));
	assert(wp);
	auto g0 = prechecked_cast<Symbol*>(wp->clone());
	trace1("DBG", g0->nodePosition(0));
	trace1("DBG", g0->nodePosition(1));

	assert(g0->nodePosition(0) == pos_t(-30, 0));
	assert(g0->nodePosition(1) == pos_t(30, 0));

	connect_push(root, g0); // unlike union0
	assert(numWires(M) == 0);
	assert(M.nodeCount() == 2);

	auto c = dynamic_cast<Conductor const*>(w0);
	assert(c);
	trace0("nu...");
	w0->set_label("union3_wire");
	auto nu = c->newUnion(g0);
	trace0("nu done");

	assert(nu);
	assert(nu->subckt());
	ElementList const* s = nu->subckt();
	assert(s);
	trace1("gnd", numWires(*s));
	assert(numWires(*s)==2);

	auto ii = s->begin();
	assert(ii != s->end());
	trace1("found", (*ii)->short_label());
	trace1("found", (*ii)->dev_type());
	auto a = prechecked_cast<Symbol const*>(*ii);
	assert(a); // resistor.
	++ii;
	a = prechecked_cast<Symbol const*>(*ii);

	assert(a->nodePosition(0) == pos_t(30, -50));
	assert(a->nodePosition(1) == pos_t(30, 0));
	++ii;
	assert(ii != s->end());
	a = prechecked_cast<Symbol const*>(*ii);
	assert(a);
	assert(a->nodePosition(0) == pos_t(30, 0));
	assert(a->nodePosition(1) == pos_t(30, 50));
	++ii;
	assert(ii == s->end());

	assert(M.size()==3);
	delete root;
}
int main()
{
	Command::command("attach legacy/components", nullptr);
	union0();
	union1();
	union2();
	union3();
}
