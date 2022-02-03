defmodule EratosthenesTest do
  use ExUnit.Case
  doctest Eratosthenes

  test "greets the world" do
    assert Eratosthenes.hello() == :world
  end
end
