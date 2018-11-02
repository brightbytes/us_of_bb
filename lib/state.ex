defmodule State do
  @moduledoc """
    `name` is the capitalized two letter state abbreviation.
    `color` and `percent` are defined by to some BB metrics.
    `position` records the physcial position of the state on the board.
    `count` records the number of lights pegged to the state.
  """

  defstruct name: :NA, color: Colors.blue, position: 0, count: 1, percent: 10

  # a list of State.count length elements each equal to the state's adjusted_color
  def display_colors(state) do
    range = 1..(state.count)
    adjusted_color = Color.percent(state.color, state.percent)
    Enum.map(range, fn(_) -> adjusted_color end)
  end

end
