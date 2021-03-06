defmodule VariablesTest do
  use ExUnit.Case

  describe "Test variables" do
    test "setting a number" do
      # set number to the right value
      number = 1
      assert number == 1
    end

    test "setting a string" do
      # set string to the right value
      string = "a string"
      assert string == "a string"
    end

    test "setting a map" do
      # set map to the right value
      map = %{test: "test"}
      assert map == %{test: "test"}
    end

    test "Pull apart tuple" do
      tuple = {:first, 2}

      # pull apart tuple to set both variables
      {first, second} = tuple
      assert first == :first
      assert second == 2
    end

    test "Pull apart map" do
      map = %{item_a: "first", item_b: "second"}

      # pull apart map to set both variables
      %{item_a: first, item_b: second} = map
      assert first == "first"
      assert second == "second"
    end
  end
end
