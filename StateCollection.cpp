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
  State al = State(ColorMgr::blue, percent, 10);
  // State ak = State(ColorMgr::blue, percent, 10);
  State az = State(ColorMgr::blue, percent, 10);
  State ar = State(ColorMgr::blue, percent, 10);
  State ca = State(ColorMgr::blue, percent, 10);
  State co = State(ColorMgr::blue, percent, 10);
  State ct = State(ColorMgr::blue, percent, 10);
  State de = State(ColorMgr::blue, percent, 10);
  State fl = State(ColorMgr::blue, percent, 10);
  State ga = State(ColorMgr::blue, percent, 10);
  // State hi = State(ColorMgr::blue, percent, 10);
  State id = State(ColorMgr::blue, percent, 10);
  State il = State(ColorMgr::blue, percent, 10);
  State in = State(ColorMgr::blue, percent, 10);
  State ia = State(ColorMgr::blue, percent, 10);
  State ks = State(ColorMgr::blue, percent, 10);
  State ky = State(ColorMgr::blue, percent, 10);
  State la = State(ColorMgr::blue, percent, 10);
  State me = State(ColorMgr::blue, percent, 10);
  State md = State(ColorMgr::blue, percent, 10);
  State ma = State(ColorMgr::blue, percent, 10);
  State mi = State(ColorMgr::blue, percent, 10);
  State mn = State(ColorMgr::blue, percent, 10);
  State ms = State(ColorMgr::blue, percent, 10);
  State mo = State(ColorMgr::blue, percent, 10);
  State mt = State(ColorMgr::blue, percent, 10);
  State ne = State(ColorMgr::blue, percent, 10);
  State nv = State(ColorMgr::blue, percent, 10);
  State nh = State(ColorMgr::blue, percent, 10);
  State nj = State(ColorMgr::blue, percent, 10);
  State nm = State(ColorMgr::blue, percent, 10);
  State ny = State(ColorMgr::blue, percent, 10);
  State nc = State(ColorMgr::blue, percent, 10);
  State nd = State(ColorMgr::blue, percent, 10);
  State oh = State(ColorMgr::blue, percent, 10);
  State ok = State(ColorMgr::blue, percent, 10);
  State org = State(ColorMgr::blue, percent, 10);
  State pa = State(ColorMgr::blue, percent, 10);
  State ri = State(ColorMgr::blue, percent, 10);
  State sc = State(ColorMgr::blue, percent, 10);
  State sd = State(ColorMgr::blue, percent, 10);
  State tn = State(ColorMgr::blue, percent, 10);
  State tx = State(ColorMgr::blue, percent, 10);
  State ut = State(ColorMgr::blue, percent, 10);
  State vt = State(ColorMgr::blue, percent, 10);
  State va = State(ColorMgr::blue, percent, 10);
  State wa = State(ColorMgr::blue, percent, 10);
  State wv = State(ColorMgr::blue, percent, 10);
  State wi = State(ColorMgr::blue, percent, 10);
  State wy = State(ColorMgr::blue, percent, 10);
  State states[48] = { al, az, ar, ca, co, ct, de, fl, ga, id, il, in, ia, ks, ky, la, me, md, ma, mi, mn, ms, mo, mt, ne, nv, nh, nj, nm, ny, nc, nd, oh, ok, org, pa, ri, sc, sd, tn, tx, ut, vt, va, wa, wv, wi, wy }

int StateCollection::length()
{
  return 48;
}

