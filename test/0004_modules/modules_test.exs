defmodule ModulesTest do
  use ExUnit.Case
  alias Super.Amazingly.AwesomeModule

  describe "Test Modules" do
    test "Expect to call a cool thing" do
      assert Modules.call_the_awesome_module() == AwesomeModule.cool_thing()
    end

    test "Expect to call a mediocre thing" do
      assert Modules.call_the_mediocre_module() == MediocreModule.mediocre_thing()
    end
  end
end
