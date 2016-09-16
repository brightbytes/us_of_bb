#
from neopixel import *

class BBColor:
  def __init__(self, r, g, b):
    self.color = Color(r, g, b)

  @staticmethod
  def none():
    return BBColor(0, 0, 0).color

  @staticmethod
  def blue():
    return BBColor(0, 196, 223).color

  @staticmethod
  def green():
    return BBColor(0, 204, 154).color

  @staticmethod
  def yellow():
    return BBColor(225, 170, 23).color

  @staticmethod
  def grey():
    return BBColor(24, 25, 25).color

  @staticmethod
  def red():
    return BBColor(245, 110, 143).color
