defmodule UsOfBb do

  @moduledoc """
  Simple example to blink a list of LEDs forever.

  The list of LEDs is platform-dependent, and defined in the config
  directory (see config.exs).   See README.md for build instructions.
  """

  require Logger
  alias Nerves.IO.Neopixel

  def start(_type, _args) do
    spawn fn -> lights_on end
    {:ok, self}
  end

  # turn on all of the states according to their config
  defp lights_on do
    {:ok, pid} = Neopixel.setup pin: 18, count: States.light_count(States.states)
    neo_pixel_values = States.display_colors(States.states)
    |> Enum.flat_map(fn(color) -> Color.values(color) end)
    |> List.foldr(<<>>, fn(a, b) -> << a, b >> end)
    Neopixel.render(pid, neo_pixel_values)
  end


end
