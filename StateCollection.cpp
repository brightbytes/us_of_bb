// StateCollection.cpp
#include "StateCollection.h"
#include "ColorMgr.h"

StateCollection::StateCollection()
{
  int percent = 10;
  State al = State(ColorMgr::blue, percent, 10);
  State ar = State(ColorMgr::green, percent, 10);
  State ca = State(ColorMgr::yellow, percent, 10);
  State org = State(ColorMgr::red, percent, 10);
  State mi = State(ColorMgr::gray, percent, 10);
  State states[5] = {al, ar, ca, org, mi};
}

int StateCollection::length()
{
  return 5;
}

