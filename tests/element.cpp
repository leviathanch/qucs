/***************************************************************************
    copyright            : 2018 by Felix Salfelder
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This plugin is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

// testing an element

#include <QTest>

#include "element.h"
#include "viewpainter.h"

using namespace qucs;

struct install_element_stub{
	install_element_stub(Element* e) : _e(e){}
	Element* _e;
};

namespace{
class test_element : public Element{
public:
	test_element() : Element() {}
	~test_element(){}
	Element* clone() const{
		return new test_element(*this);
	}

private: // Element
	void paint(ViewPainter*) const{}

}e;
install_element_stub p1 (&e);

}

// this is fixed in #742
// (here for now, because libraries are not accessible)
//Element::Element() : _position(0, 0){}
Element::~Element(){}
