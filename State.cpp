// State.cpp
#include "State.h"

State::State(RGB rgb, int per, int l)
{
  red   = (float) rgb.red;
  green = (float) rgb.green;
  blue  = (float) rgb.blue;
  percent = per;
  len = l;
}

void State::lightUp()
{
  return;
}

float State::getRed()
{
  return red * brightness();
}

float State::getBlue()
{
  return blue * brightness();
}

float State::getGreen()
{
  return green * brightness();
}

int State::getLength()
{
  return len;
}

float State::brightness()
{
  return ((float) percent / 100.0);
}
