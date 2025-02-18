/***************************************************************************
                          inductor.cpp  -  description
                             -------------------
    begin                : Sat Aug 23 2003
    copyright            : (C) 2003 by Michael Margraf
    email                : michael.margraf@alumni.tu-berlin.de
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include "inductor.h"


Inductor::Inductor()
{
  Description = QObject::tr("inductor");

  Arcs.push_back(qucs::Arc(-18, -6, 12, 12,  0, 16*180,QPen(Qt::darkBlue,2)));
  Arcs.push_back(qucs::Arc( -6, -6, 12, 12,  0, 16*180,QPen(Qt::darkBlue,2)));
  Arcs.push_back(qucs::Arc(  6, -6, 12, 12,  0, 16*180,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line(-30,  0,-18,  0,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line( 18,  0, 30,  0,QPen(Qt::darkBlue,2)));

  Ports.push_back(qucs::Port(-30,  0));
  Ports.push_back(qucs::Port( 30,  0));

  x1 = -30; y1 = -10;
  x2 =  30; y2 =   6;

  tx = x1+4;
  ty = y2+4;
  Model = "L";
  Name  = "L";

  Props.push_back(qucs::Property("L", "1 nH", true,
		QObject::tr("inductance in Henry")));
  Props.push_back(qucs::Property("I", "", false,
		QObject::tr("initial current for transient simulation")));
}

Inductor::~Inductor()
{
}

Component* Inductor::newOne()
{
  return new Inductor();
}

Element* Inductor::info(QString& Name, char* &BitmapFile, bool getNewOne)
{
  Name = QObject::tr("Inductor");
  BitmapFile = (char *) "inductor";  // bitmap file name without suffix

  if(getNewOne)  return new Inductor();
  return 0;
}
