defmodule UsOfBb do
  @moduledoc """
  Show the adoption rate of BB across the United States using NeoPixel LEDS.
  """

  use Application
  require Logger
  require Nerves.Neopixel

  # alias Nerves.Neopixel

  def start(_type, _args) do
    ch0_config = Application.get_env(:neopixel, :channel0)
    [pin, count] = [ch0_config[:pin], States.light_count(States.states)]
    {:ok, pid} = Nerves.Neopixel.setup(pin: pin, count: count)
    lights_on(pid)
  end

  def neopixel_values do
    States.display_colors(States.states)
      |> Enum.flat_map(fn(color) -> Color.values(color) end)
      |> List.foldr(<<>>, fn(a, b) -> << a, b >> end)
  end

  def lights_on(pid) do
    Nerves.Neopixel.render(pid, neopixel_values)
  end

end
