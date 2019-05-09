defmodule BookClubEctoSchemaTest do
  use ExUnit.Case

  alias BookClub.{Book, Club, Member}

  describe "Check the Structs" do
    test "Check the Member struct" do
      changeset = Member.create(%{})
      refute changeset.valid?
      assert changeset.errors == [first_name: {"can't be blank", [validation: :required]}, last_name: {"can't be blank", [validation: :required]}]

      params = %{first_name: "Bob", last_name: "Schmidt"}
      changeset = Member.create(params)
      assert changeset.valid?
      assert length(changeset.errors) == 0
      assert changeset.changes == params
    end

    test "Check the Book struct" do
      changeset = Book.create(%{})
      refute changeset.valid?
      assert changeset.errors == [title: {"can't be blank", [validation: :required]}, author: {"can't be blank", [validation: :required]}, pages: {"can't be blank", [validation: :required]}, genre: {"can't be blank", [validation: :required]}]

      params = %{title: "Great Expectations", author: "Charles Dickens", pages: 544, genre: "Bildungsroman"}
      changeset = Book.create(params)
      assert changeset.valid?
      assert length(changeset.errors) == 0
      assert changeset.changes == params
    end

    test "Check the Club Struct" do
      changeset = Club.create(%{})
      refute changeset.valid?
      assert changeset.errors == [name: {"can't be blank", [validation: :required]}]

      params = %{name: "Club", meeting_day: "Wednesday"}
      changeset = Club.create(params)
      assert length(changeset.errors) == 0
      assert changeset.changes == params
    end
  end
end
