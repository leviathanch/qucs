/***************************************************************************
                          cccs.cpp  -  description
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

#include "cccs.h"


CCCS::CCCS()
{
  Description = QObject::tr("current controlled current source");

  Arcs.push_back(qucs::Arc(0,-11, 22, 22,  0, 16*360,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line( 11, -7, 11,  7,QPen(Qt::darkBlue,3)));
  Lines.push_back(qucs::Line( 11,  6, 15,  1,QPen(Qt::darkBlue,3)));
  Lines.push_back(qucs::Line( 11,  6,  7,  1,QPen(Qt::darkBlue,3)));

  Lines.push_back(qucs::Line(-30,-30,-12,-30,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line(-30, 30,-12, 30,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line( 11,-30, 30,-30,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line( 11, 30, 30, 30,QPen(Qt::darkBlue,2)));

  Lines.push_back(qucs::Line(-12,-30,-12, 30,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line( 11,-30, 11,-11,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line( 11, 30, 11, 11,QPen(Qt::darkBlue,2)));

  Lines.push_back(qucs::Line(-12, 20,-17, 11,QPen(Qt::darkBlue,2)));
  Lines.push_back(qucs::Line(-12, 20, -8, 11,QPen(Qt::darkBlue,2)));

  Lines.push_back(qucs::Line(-25,-27, 25,-27,QPen(Qt::darkGray,1)));
  Lines.push_back(qucs::Line( 25,-27, 25, 27,QPen(Qt::darkGray,1)));
  Lines.push_back(qucs::Line( 25, 27,-25, 27,QPen(Qt::darkGray,1)));
  Lines.push_back(qucs::Line(-25, 27,-25,-27,QPen(Qt::darkGray,1)));

  Ports.push_back(qucs::Port(-30,-30));
  Ports.push_back(qucs::Port( 30,-30));
  Ports.push_back(qucs::Port( 30, 30));
  Ports.push_back(qucs::Port(-30, 30));

  x1 = -30; y1 = -30;
  x2 =  30; y2 =  30;

  tx = x1+4;
  ty = y2+4;
  Model = "CCCS";
  Name  = "SRC";

  Props.push_back(qucs::Property("G", "1", true,
		QObject::tr("forward transfer factor")));
  Props.push_back(qucs::Property("T", "0", false, QObject::tr("delay time")));
}

CCCS::~CCCS()
{
}

Component* CCCS::newOne()
{
  return new CCCS();
}

Element* CCCS::info(QString& Name, char* &BitmapFile, bool getNewOne)
{
  Name = QObject::tr("Current Controlled Current Source");
  BitmapFile = (char *) "cccs";

  if(getNewOne)  return new CCCS();
  return 0;
}
