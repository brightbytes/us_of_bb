defmodule ColorsTest do
  use ExUnit.Case
  doctest Colors

  test "colors blue" do
    assert Colors.blue.red == 0
    assert Colors.blue.green == 196
    assert Colors.blue.blue == 223
  end
end
