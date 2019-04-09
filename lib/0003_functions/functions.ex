defmodule Functions do
  @moduledoc """
  Module to learn about elixir functions

  The failing tests will be missing function information.
  """

  # The following two functions should return true if a number is passed in and false otherwise.
  def needs_a_guard(num), do: true
  def needs_a_guard(not_a_num), do: false

  # Need another signature that returns true if 42 is passed in.
  def is_the_answer?(wrong_number), do: false
end
