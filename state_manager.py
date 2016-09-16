#
from state import State
from bb_color import BBColor

class StateManager:
  def __init__(self, percent):
    self.percent = percent

  def ordered_states(self):
    return [
      self.ca(), self.az(), self.ut(), self.nv(), self.oregon(),
      self.wa(), self.id(), self.mt(), self.wy(), self.co(),
      self.nm(), self.tx(), self.la(), self.ms(), self.ar(),
      self.ok(), self.ks(), self.ne(), self.sd(), self.nd(),
      self.mn(), self.ia(), self.mo(), self.il(), self.wi(),
      self.mi(), self.indiana(), self.oh(), self.wv(), self.ky(),
      self.tn(), self.al(), self.fl(), self.ga(), self.sc(),
      self.nc(), self.va(), self.md(), self.de(), self.nj(),
      self.pa(), self.ny(), self.vt(), self.ma(), self.ct(),
      self.ri(), self.nh(), self.me()
    ]

  def al(self):
    return State(BBColor.blue(), self.percent, 10)

  def ak(self):
    return State(BBColor.blue(), self.percent, 10)

  def az(self):
    return State(BBColor.blue(), self.percent, 21)

  def ar(self):
    return State(BBColor.blue(), self.percent, 10)

  def ca(self):
    return State(BBColor.blue(), self.percent, 50)

  def co(self):
    return State(BBColor.blue(), self.percent, 22)

  def ct(self):
    return State(BBColor.blue(), self.percent, 1)

  def de(self):
    return State(BBColor.blue(), self.percent, 1)

  def fl(self):
    return State(BBColor.blue(), self.percent, 14)

  def ga(self):
    return State(BBColor.blue(), self.percent, 12)

  def hi(self):
    return State(BBColor.blue(), self.percent, 10)

  def id(self):
    return State(BBColor.blue(), self.percent, 18)

  def il(self):
    return State(BBColor.blue(), self.percent, 12)

  def indiana(self):
    return State(BBColor.blue(), self.percent, 10)

  def ia(self):
    return State(BBColor.blue(), self.percent, 11)

  def ks(self):
    return State(BBColor.blue(), self.percent, 20)

  def ky(self):
    return State(BBColor.blue(), self.percent, 8)

  def la(self):
    return State(BBColor.blue(), self.percent, 6)

  def me(self):
    return State(BBColor.blue(), self.percent, 9)

  def md(self):
    return State(BBColor.blue(), self.percent, 2)

  def ma(self):
    return State(BBColor.blue(), self.percent, 3)

  def mi(self):
    return State(BBColor.blue(), self.percent, 15)

  def mn(self):
    return State(BBColor.blue(), self.percent, 19)

  def ms(self):
    return State(BBColor.blue(), self.percent, 9)

  def mo(self):
    return State(BBColor.blue(), self.percent, 12)

  def mt(self):
    return State(BBColor.blue(), self.percent, 39)

  def nd(self):
    return State(BBColor.blue(), self.percent, 20)

  def ne(self):
    return State(BBColor.blue(), self.percent, 23)

  def nh(self):
    return State(BBColor.blue(), self.percent, 2)

  def nj(self):
    return State(BBColor.blue(), self.percent, 2)

  def nm(self):
    return State(BBColor.blue(), self.percent, 22)

  def ny(self):
    return State(BBColor.blue(), self.percent, 8)

  def nc(self):
    return State(BBColor.blue(), self.percent, 11)

  def nv(self):
    return State(BBColor.blue(), self.percent, 27)

  def oh(self):
    return State(BBColor.blue(), self.percent, 9)

  def ok(self):
    return State(BBColor.blue(), self.percent, 11)

  def oregon(self):
    return State(BBColor.blue(), self.percent, 26)

  def pa(self):
    return State(BBColor.blue(), self.percent, 12)

  def ri(self):
    return State(BBColor.blue(), self.percent, 1)

  def sc(self):
    return State(BBColor.blue(), self.percent, 5)

  def sd(self):
    return State(BBColor.blue(), self.percent, 17)

  def tn(self):
    return State(BBColor.blue(), self.percent, 8)

  def tx(self):
    return State(BBColor.blue(), self.percent, 59)

  def ut(self):
    return State(BBColor.blue(), self.percent, 21)

  def vt(self):
    return State(BBColor.blue(), self.percent, 3)

  def va(self):
    return State(BBColor.blue(), self.percent, 9)

  def wa(self):
    return State(BBColor.blue(), self.percent, 14)

  def wv(self):
    return State(BBColor.blue(), self.percent, 4)

  def wi(self):
    return State(BBColor.blue(), self.percent, 11)

  def wy(self):
    return State(BBColor.blue(), self.percent, 23)
