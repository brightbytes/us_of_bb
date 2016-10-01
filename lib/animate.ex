defmodule UsOfBb.Animate do
  @moduledoc """
  Show the adoption rate of BB across the United States using NeoPixel LEDS.
  """

  use Application
  alias Nerves.Neopixel

  def neopixel_values do
    States.display_colors(States.states)
      |> Enum.flat_map(fn(color) -> Color.values(color) end)
      |> List.foldr(<<>>, fn(a, b) -> << a, b >> end)
  end

  def lights_on(channel) do
    spawn fn () -> lights_on_indef(channel) end
  end

  def lights_on_indef(channel) do
    Neopixel.render(channel, neopixel_values)
    :timer.sleep(100)
    lights_on_indef(channel)
  end

end
