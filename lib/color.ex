defmodule Color do

  # FIXME limit any value to max 256
  defstruct red: 0, green: 0, blue: 0

  # return a new color adjusted by percent
  def percent(color, percent) do
    %Color {
      red: percent_value(color.red, percent),
      green: percent_value(color.green, percent),
      blue: percent_value(color.blue, percent)
    }
  end

  def values(color) do
    [color.red, color.green, color.blue]
  end

  defp percent_value(value, percent) do
    new_value = value * (percent / 100)
    round(new_value)
  end

end
