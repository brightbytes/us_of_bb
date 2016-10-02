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
      %State { name: :AL, color: Colors.blue, position: 0, count: 10, percent: 100 },
      %State { name: :AK, color: Colors.blue, position: 1, count: 10, percent: 100 },
      %State { name: :AZ, color: Colors.blue, position: 2, count: 10, percent: 100 },
      %State { name: :AR, color: Colors.blue, position: 3, count: 10, percent: 100 },
      %State { name: :CA, color: Colors.blue, position: 4, count: 10, percent: 100 },
      %State { name: :CO, color: Colors.blue, position: 5, count: 10, percent: 100 },
      %State { name: :CT, color: Colors.blue, position: 6, count: 10, percent: 100 },
      %State { name: :DE, color: Colors.blue, position: 7, count: 10, percent: 100 },
      %State { name: :FL, color: Colors.blue, position: 8, count: 10, percent: 100 },
      %State { name: :GA, color: Colors.blue, position: 9, count: 10, percent: 100 },
      %State { name: :HI, color: Colors.blue, position: 10, count: 10, percent: 100 },
      %State { name: :ID, color: Colors.blue, position: 11, count: 10, percent: 100 },
      %State { name: :IL, color: Colors.blue, position: 12, count: 10, percent: 100 },
      %State { name: :IN, color: Colors.blue, position: 13, count: 10, percent: 100 },
      %State { name: :IA, color: Colors.blue, position: 14, count: 10, percent: 100 },
      %State { name: :KS, color: Colors.blue, position: 15, count: 10, percent: 100 },
      %State { name: :KY, color: Colors.blue, position: 16, count: 10, percent: 100 },
      %State { name: :LA, color: Colors.blue, position: 17, count: 10, percent: 100 },
      %State { name: :ME, color: Colors.blue, position: 18, count: 10, percent: 100 },
      %State { name: :MD, color: Colors.blue, position: 19, count: 10, percent: 100 },
      %State { name: :MA, color: Colors.blue, position: 20, count: 10, percent: 100 },
      %State { name: :MI, color: Colors.blue, position: 21, count: 10, percent: 100 },
      %State { name: :MN, color: Colors.blue, position: 22, count: 10, percent: 100 },
      %State { name: :MS, color: Colors.blue, position: 23, count: 10, percent: 100 },
      %State { name: :MO, color: Colors.blue, position: 24, count: 10, percent: 100 },
      %State { name: :MT, color: Colors.blue, position: 25, count: 10, percent: 100 },
      %State { name: :NE, color: Colors.blue, position: 26, count: 10, percent: 100 },
      %State { name: :NV, color: Colors.blue, position: 27, count: 10, percent: 100 },
      %State { name: :NH, color: Colors.blue, position: 28, count: 10, percent: 100 },
      %State { name: :NJ, color: Colors.blue, position: 29, count: 10, percent: 100 },
      %State { name: :NM, color: Colors.blue, position: 30, count: 10, percent: 100 },
      %State { name: :NY, color: Colors.blue, position: 31, count: 10, percent: 100 },
      %State { name: :NC, color: Colors.blue, position: 32, count: 10, percent: 100 },
      %State { name: :ND, color: Colors.blue, position: 33, count: 10, percent: 100 },
      %State { name: :OH, color: Colors.blue, position: 34, count: 10, percent: 100 },
      %State { name: :OK, color: Colors.blue, position: 35, count: 10, percent: 100 },
      %State { name: :OR, color: Colors.blue, position: 36, count: 10, percent: 100 },
      %State { name: :PA, color: Colors.blue, position: 37, count: 10, percent: 100 },
      %State { name: :RI, color: Colors.blue, position: 38, count: 10, percent: 100 },
      %State { name: :SC, color: Colors.blue, position: 39, count: 10, percent: 100 },
      %State { name: :SD, color: Colors.blue, position: 40, count: 10, percent: 100 },
      %State { name: :TN, color: Colors.blue, position: 41, count: 10, percent: 100 },
      %State { name: :TX, color: Colors.blue, position: 42, count: 10, percent: 100 },
      %State { name: :UT, color: Colors.blue, position: 43, count: 10, percent: 100 },
      %State { name: :VT, color: Colors.blue, position: 44, count: 10, percent: 100 },
      %State { name: :VA, color: Colors.blue, position: 45, count: 10, percent: 100 },
      %State { name: :WA, color: Colors.blue, position: 46, count: 10, percent: 100 },
      %State { name: :WV, color: Colors.blue, position: 47, count: 10, percent: 100 },
      %State { name: :WI, color: Colors.blue, position: 48, count: 10, percent: 100 },
      %State { name: :WY, color: Colors.blue, position: 49, count: 10, percent: 100 }
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
