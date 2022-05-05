defmodule BookClub.Dams.ClubBooksDam do
  @moduledoc """
    Data Access Module to access club_books schema.
  """

  import Ecto.Query
  alias BookClub.Book
  alias BookClub.Club
  alias BookClub.ClubBook
  alias ElixirTraining.Repo

  # should get all books where club_id matches
  def get_books_for_club(club_id) do
    Repo.all(
      from b in Book,
      join: bc in ClubBook,
      on: bc.book_id == b.id,
      where: bc.club_id == ^club_id
    )
  end

  # should get all clubs where book_id matches
  def get_clubs_for_book(book_id) do
    Repo.all(
      from c in Club,
      join: bc in ClubBook,
      on: bc.club_id == c.id,
      where: bc.book_id == ^book_id
    )
  end

  def create(%{} = club_book) do
    club_book
    |> ClubBook.create()
    |> Repo.insert()
  end

  def update(%ClubBook{} = club_book, %{} = changes) do
    club_book
    |> ClubBook.edit(changes)
    |> Repo.update()
  end

  def delete(%ClubBook{} = club_book) do
    Repo.delete(club_book)
  end
end
