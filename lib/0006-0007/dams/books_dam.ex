defmodule BookClub.Dams.BooksDam do
  @moduledoc"""
    Data Access Module to access books schema.
  """

  import Ecto.Query

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

  def delete(%BookClub.Book{} = book) do
    book
  end
end
