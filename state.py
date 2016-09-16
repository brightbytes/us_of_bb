#
class State:
  def __init__(self, percent, color, length):
    self.percent = percent
    self.color   = color
    self.length  = length

  def __repr__(self):
    return str(self.length)

  def __str__(self):
    return str(self.length)