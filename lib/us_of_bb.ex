defmodule UsOfBb do
  @moduledoc """
  Show the adoption rate of BB across the United States using NeoPixel LEDS.
  """

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    ch0_config = Application.get_env(:neopixel, :channel0)
    [pin, count] = [ch0_config[:pin], States.light_count(States.states)]


    children = [
      worker(Nerves.Neopixel, [[pin, count]]),
      worker(Task, [fn -> UsOfBb.Animate.lights_on(0) end], id: :lights_on),
    ]

    opts = [strategy: :one_for_one, name: Neopixel.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
