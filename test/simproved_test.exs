defmodule SimprovedTest do
  use ExUnit.Case
  doctest Simproved

  test "greets the world" do
    assert Simproved.hello() == :world
  end
end
