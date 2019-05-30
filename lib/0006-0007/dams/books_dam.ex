defmodule BookClub.Dams.BooksDam do
  @moduledoc"""
    Data Access Module to access books schema.
  """

  def all() do
    []
  end

  def by_id(id) do
    id
  end

  def create(%{} = book) do
    book
  end

  def update(%BookClub.Book{} = book, %{} = changes) do
    book
  end

  def delete(id) do
    id
  end
end
