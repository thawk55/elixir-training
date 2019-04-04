defmodule TypesTest do
  use ExUnit.Case

  describe "Test types" do
    test "atom test" do
      assert is_atom(Types.atom())
    end

    test "string test" do
      assert is_binary(Types.string())
    end

    test "integer test" do
      assert is_integer(Types.integer())
    end

    test "float test" do
      assert is_float(Types.float())
    end

    test "boolean test" do
      assert is_boolean(Types.boolean())
    end

    test "list test" do
      assert is_list(Types.list())
    end

    test "tuple test" do
      assert is_tuple(Types.tuple())
    end

    test "map test" do
      assert is_map(Types.map())
    end

    test "struct test" do
      assert %Types{} = Types.struct()
    end
  end
end
