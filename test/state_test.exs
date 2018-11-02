defmodule StateTest do
  use ExUnit.Case
  doctest State

  setup_all do
    {
      :ok,
      test_state: %State { name: :TS, color: Colors.blue, position: 10, count: 11, percent: 12 }
    }
  end

  test "state.color", state do
    assert state[:test_state].color == Colors.blue
  end

  test "state.position", state do
    assert state[:test_state].position == 10
  end

  test "state.count", state do
    assert state[:test_state].count == 11
  end

  test "state.percent", state do
    assert state[:test_state].percent == 12
  end

end
