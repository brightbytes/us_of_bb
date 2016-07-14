// State.h
#ifndef STATE_H
#define STATE_H

#include "ColorMgr.h"

class State
{
  float red;
  float green;
  float blue;
  int percent;
  int len;

public:
  State(RGB rgb, int per, int l);
  int getLength();
  byte r;
  byte g;
  byte b;
  float getRed();
  float getGreen();
  float getBlue();
  void lightUp();
private:
  byte brightness(byte, int);
};

#endif

