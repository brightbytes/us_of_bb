defmodule Colors do
  @moduledoc """
    brightbytes color pallette
  """

  @blue   %Color { red: 0,   green: 196, blue: 223 }
  @green  %Color { red: 0,   green: 204, blue: 153 }
  @yellow %Color { red: 225, green: 170, blue: 23 }
  @red    %Color { red: 245, green: 110, blue: 143 }
  @gray   %Color { red: 24,  green: 25,  blue: 25 }

  def blue, do: @blue
  def green, do: @green
  def yellow, do: @yellow
  def red, do: @red
  def gray, do: @gray

end
