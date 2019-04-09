defmodule FunctionsTest do
  use ExUnit.Case

  describe "Test Functions" do
    test "Expect a number to return true" do
      assert Functions.needs_a_guard(1) == "a number!"
      assert Functions.needs_a_guard("string") == "Not a number!"
    end

    test "Expect 42 to be the answer" do
      refute Functions.is_the_answer?(1)
      refute Functions.is_the_answer?(123)
      assert Functions.is_the_answer?(42)
    end
  end
end
