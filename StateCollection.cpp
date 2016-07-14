// StateCollection.cpp
#include "StateCollection.h"

StateCollection::StateCollection()
{
  int percent = 10;
  Color colorMgr = Color();
  State al = State(colorMgr.blue(), percent, 10);
  State ar = State(colorMgr.green(), percent, 10);
  State ca = State(colorMgr.yellow(), percent, 10);
  State org = State(colorMgr.red(), percent, 10);
  State mi = State(colorMgr.gray(), percent, 10);
  State states[5] = {al, ar, ca, org, mi};
}

int StateCollection::length()
{
  return 5;
}

