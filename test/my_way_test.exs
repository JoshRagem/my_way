defmodule MyWayTest do
  use ExUnit.Case
  doctest MyWay

  test "greets the world" do
    assert MyWay.hello() == :world
  end
end
