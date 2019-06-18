defmodule BookClub.Dams.BooksDam do
  @moduledoc """
    Data Access Module to access books schema.
  """

  import Ecto.Query
  alias ElixirTraining.Repo
  alias BookClub.Book

  def all() do
    Repo.all(from(b in Book))
  end

  def by_id(id) do
    Repo.one(from(b in Book, where: b.id == ^id))
  end

  def create(%{} = book) do
    book
    |> Book.create()
    |> Repo.insert()
  end

  def update(%BookClub.Book{} = book, %{} = changes) do
    book
    |> Book.edit(changes)
    |> Repo.update()
  end

  def delete(%BookClub.Book{} = book) do
    Repo.delete(book)
  end
end
