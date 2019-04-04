defmodule ElixirTrainingTest do
  use ExUnit.Case
  doctest ElixirTraining

  test "greets the world" do
    assert ElixirTraining.hello() == :world
  end
end
