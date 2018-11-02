defmodule ColorTest do
  use ExUnit.Case
  doctest Color

  test "percent down" do
    original = %Color { red: 0,   green: 200, blue: 100 }
    adjusted = %Color { red: 0, green: 20, blue: 10 }
    assert Color.percent(original, 10) == adjusted
  end

  test "percent up" do
    original = %Color { red: 0, green: 20, blue: 10 }
    adjusted = %Color { red: 0,   green: 30, blue: 15 }
    assert Color.percent(original, 150) == adjusted
  end

  test "values" do
    assert Color.values(%Color { red: 0, green: 20, blue: 30 }) == [0, 20 ,30]
  end

end
