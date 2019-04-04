defmodule VariablesTest do
  use ExUnit.Case

  describe "Test variables" do
    test "setting a number" do
      number = nil

      # set number to the right value

      assert number == 1
    end

    test "setting a string" do
      string = nil

      # set string to the right value

      assert string == "a string"
    end

    test "setting a map" do
      map = nil

      # set map to the right value

      assert map == %{test: "test"}
    end

    test "Pull apart tuple" do
      first = nil
      second = nil
      tuple = {:first, 2}

      # pull apart tuple to set both variables

      assert first == :first
      assert second == 2
    end

    test "Pull apart map" do
      first = nil
      second = nil
      map = %{item_a: "first", item_b: "second"}

      # pull apart map to set both variables

      assert first == "first"
      assert second == "second"
    end
  end
end
