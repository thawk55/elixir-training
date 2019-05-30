defmodule BooksDamTest do
  use ExUnit.Case

  alias BookClub.Book
  alias BookClub.Dams.BooksDam

  describe "Queries for Books" do
    test "can get all/0" do
      {:ok, book1} = create_book()
      {:ok, book2} = create_book()
      books = BooksDam.all()
      assert length(books) == 2
      assert Enum.any?(books, fn b -> b.id == book1.id end)
      assert Enum.any?(books, fn b -> b.id == book2.id end)
    end

    test "can get by_id/1" do
      {:ok, book1} = create_book()
      {:ok, book2} = create_book()
      assert book1 == BooksDam.by_id(book1.id)
      assert book2 == BooksDam.by_id(book2.id)
    end

    test "create/1 new book" do
      book = BooksDam.create(%{title: "Great Expectations", author: "Charles Dickens", pages: 544, genre: "Bildungsroman"})
      refute is_nil(book.id)
    end

    test "update/2 a book" do
      {:ok, book1} = create_book()
      updated_book = BooksDam.update(book1, %{title: "New title"})
      assert updated_book.title == "New title"
      assert updated_book.id == book1.id
    end

    test "delete/1 a book" do
      {:ok, book1} = create_book()
      BooksDam.delete(book1)
      assert is_nil(BooksDam.by_id(book1.id))
    end
  end

  def create_book() do
    ElixirTraining.Repo.insert(
      Book.create(%{
        title: "Book#{Enum.random(1..100)}",
        author: "Author#{Enum.random(1..100)}",
        pages: Enum.random(100..500),
        genre: "Generic"
      })
    )
  end
end
