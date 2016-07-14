// State.cpp
#include "State.h"

State::State(RGB rgb, int per, int l)
{
  r = brightness(rgb.red, per);
  g = brightness(rgb.green, per);
  b = brightness(rgb.blue, per);
  len = l;
}

void State::lightUp()
{
  return;
}

int State::getLength()
{
  return len;
}

byte State::brightness(byte hue, int percent)
{
  return ((float) hue * ((float) percent / 100));
}
