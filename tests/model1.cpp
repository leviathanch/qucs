// A test
// (c) 2020 Felix Salfelder
// GPLv3+

#include "element_list.h"
#include "qucs_globals.h"
#include "wiretest.h"

static const unsigned N=99;
//static const unsigned N=9999;

int main()
{
	Component* root = device_dispatcher.clone("subckt_proto");
	assert(root);
	assert(root->scope());
	ElementList& M = *root->scope();

	Symbol* w0;
	Symbol* w1;
	auto wp=symbol_dispatcher["Wire"];
//	/// Wire(0,0,1,0);
	///auto w0 = prechecked_cast<Symbol*>(wp->clone());
	///w0->set_param_by_name(std::string("deltax"), "1");

	std::cout << "building nets.\n";
	for(unsigned i=0; i<N; ++i){
		// w0 = new Wire(i,0,i+1,0);
		w0 = prechecked_cast<Symbol*>(wp->clone());
		w0->set_param_by_name(std::string("$xposition"), std::to_string(i));
		w0->set_param_by_name(std::string("deltax"), "1");
		connect_push(root, w0);

		// w1 = new Wire(0,i+1,0,i+2);
		w1 = prechecked_cast<Symbol*>(wp->clone());
		w1->set_param_by_name(std::string("$yposition"), std::to_string(i+1));
		w1->set_param_by_name(std::string("deltay"), "1");
		connect_push(root, w1);
		trace2("new wires", w0, w1);
	}
//	assert(w1->net() != w0->net());
	assert(numWires(M)==2*N);
	std::cout << "nodecount" << M.numNodes() << "\n";
	assert(M.numNodes()==2*N+2);
	std::cout << "numNets" << M.numNets() << "\n";
	assert(M.numNets()==2);

	std::cout << "joining nets.\n";
//	auto w2 = new Wire(0,0,0,1);
	auto w2 = prechecked_cast<Symbol*>(wp->clone());
	w2->set_param_by_name(std::string("deltay"), "1");
	connect_push(root, w2);
	//assert(w1->net() == w0->net());
	assert(M.numNets()==1);

	std::cout << "disjoining nets.\n";
	M.erase(w2);
	assert(M.numNets()==2);
//	assert(w1->net() != w0->net());

	// this takes ages in comparison
	std::cout << "clearing\n";
	M.clear();
	delete root;
}
