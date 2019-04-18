defmodule Modules do
  @moduledoc """
  Module to learn about elixir modules.

  You'll need to call the functions from two modules Super.Amazingly.AwesomeModule as well as MediocreModule
  """

  alias Super.Amazingly.AwesomeModule

  # you'll need to call cool_thing/0 from the module Super.Amazingly.AwesomeModule
  def call_the_awesome_module() do
    AwesomeModule.cool_thing()
  end

  # you'll need to call mediocre_thing/0 from the module MediocreModule
  def call_the_mediocre_module() do
    MediocreModule.mediocre_thing()
  end
end
