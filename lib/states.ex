defmodule States do
  @moduledoc """
    A list of states
  """

  # FIXME: @states should be loaded from a config file and updateable via API.
  #   We should be able to update the config locally and then
  #   push the change to the production device via an api.
  #   This way the config in code is always current and we don't have to remake
  #   the firmware every time there is a change.
  @states Enum.sort(
    [
      %State { name: :AL, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :AK, color: Colors.blue, position: 0, count: 1, percent: 0 }, # off
      %State { name: :AZ, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :AR, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :CA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :CO, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :CT, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :DE, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :FL, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :GA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :HI, color: Colors.blue, position: 0, count: 1, percent: 0 }, # off
      %State { name: :ID, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :IL, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :IN, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :IA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :KS, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :KY, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :LA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :ME, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MD, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MI, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MN, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MS, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MO, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :MT, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NE, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NV, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NH, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NJ, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NM, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NY, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :NC, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :ND, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :OH, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :OK, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :OR, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :PA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :RI, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :SC, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :SD, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :TN, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :TX, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :UT, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :VT, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :VA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :WA, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :WV, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :WI, color: Colors.blue, position: 0, count: 1, percent: 10 },
      %State { name: :WY, color: Colors.blue, position: 0, count: 1, percent: 10 }
    ],
    &(&1.position < &2.position) # sort the state list by position on the board
  )

  def states, do: @states

  # all lights on the board
  def light_count(states) do
    Enum.map(states, fn(state) -> state.count end)
    |> Enum.sum
  end

  # a Color for each light on the board
  def display_colors(states) do
    Enum.flat_map(states, fn(state) -> State.display_colors(state) end)
  end

  # a R, G, B values for each light on the board in a flat list
  def display_values(states) do
    Enum.flat_map(States.display_colors(states), fn(color) -> Color.values(color) end)
  end
end
