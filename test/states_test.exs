defmodule StatesTest do
  use ExUnit.Case
  doctest State

  setup_all do
    {
      :ok,
      states: [
        %State { name: :T1, color: %Color { red: 10, green: 20, blue: 30}, position: 10, count: 1, percent: 100 },
        %State { name: :T3, color: %Color { red: 70, green: 80, blue: 90}, position: 12, count: 2, percent: 10 }, # 10 percent
        %State { name: :T2, color: %Color { red: 40, green: 50, blue: 60}, position: 11, count: 1, percent: 100 },
      ]
    }
  end

  test "states.light_count", state do
    assert States.light_count(state[:states]) == 4 # sum of counts
  end

  test "states.display_colors", state do
    assert States.display_colors(state[:states]) == [
      %Color { red: 10, green: 20, blue: 30},
      %Color { red: 7, green: 8, blue: 9},
      %Color { red: 7, green: 8, blue: 9},
      %Color { red: 40, green: 50, blue: 60}
    ]
  end

  test "states.display_values", state do
    assert States.display_values(state[:states]) == [10, 20, 30, 7, 8, 9, 7, 8, 9, 40, 50, 60]
  end

end
