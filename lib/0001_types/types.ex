defmodule Types do
  @moduledoc """
  Module to learn about elixir types

  Each function should return type mentioned
  """
  defstruct hello: 1

  def atom() do
    :hello
  end

  def string() do
    "hello"
  end

  def integer() do
    1
  end

  def float() do
    1.0
  end

  def boolean() do
    true
  end

  def list() do
    [1, 2, 3]
  end

  def tuple() do
    {1, 2}
  end

  def map() do
    %{hello: 1}
  end

  # Struct name defined in the file is Types
  def struct() do
    %Types{hello: 2}
  end
end
