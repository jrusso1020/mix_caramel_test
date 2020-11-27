defmodule BasicProjectTest do
  use ExUnit.Case
  doctest BasicProject

  test "can call Elixir code" do
    assert BasicProject.hello() == :world
  end

  test "can call Caramel code" do
    assert :hello_world.hello() == "world"
  end
end
