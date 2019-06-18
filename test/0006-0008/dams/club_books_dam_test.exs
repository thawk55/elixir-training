defmodule ClubBooksDamTest do
  use ElixirTraining.Case

  alias BookClub.Club
  alias BookClub.Dams.{BooksDam, ClubBooksDam, ClubsDam, MembersDam}

  describe "Queries for ClubBooks" do
    setup do
      {:ok, club} = ClubsDam.create(%{name: "Book Club", meeting_day: "Monday"})
      {:ok, club2} = ClubsDam.create(%{name: "Book Club2", meeting_day: "Friday"})

      {:ok, book} =
        BooksDam.create(%{title: "Book", author: "Some Guy", pages: 1, genre: "Mystery"})

      {:ok, book2} =
        BooksDam.create(%{title: "Book2", author: "Some Guy", pages: 1, genre: "Mystery"})

      {:ok, book3} =
        BooksDam.create(%{title: "Book3", author: "Some Guy", pages: 1, genre: "Mystery"})

      {:ok,
       %{
         club: club,
         club2: club2,
         book: book,
         book2: book2,
         book3: book3
       }}
    end

    test "create/1 new club book", %{club: club, book: book} do
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club.id, book_id: book.id})
      refute is_nil(club_book.id)
    end

    test "update/2 a club book", %{club: club, book: book, book2: book2} do
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club.id, book_id: book.id})

      {:ok, updated_club} = ClubBooksDam.update(club_book, %{book_id: book2.id})
      assert updated_club.book_id == book2.id
    end

    test "delete/1 a club_book", %{club: club, book: book} do
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club.id, book_id: book.id})
      {:ok, _} = ClubBooksDam.delete(club_book)
    end

    test "get_books_for_club", %{club: club, book: book, book2: book2} do
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club.id, book_id: book.id})
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club.id, book_id: book2.id})
      assert length(ClubBooksDam.get_books_for_club(club.id)) == 2
    end

    test "get_clubs_for_book", %{club: club, club2: club2, book: book} do
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club.id, book_id: book.id})
      {:ok, club_book} = ClubBooksDam.create(%{club_id: club2.id, book_id: book.id})
      assert length(ClubBooksDam.get_clubs_for_book(book.id)) == 2
    end
  end
end
