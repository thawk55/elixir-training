defmodule BookClub.ClubBook do
  @moduledoc """
  Book Struct

  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "club_books" do
    belongs_to(:book, BookClub.Book)
    belongs_to(:club, BookClub.Club)
  end

  @fields [:book_id, :club_id]

  @doc """
  Creates a new club_book.
  """
  def create(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end

  @doc """
  Updates an existing club_book.
  """
  def edit(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
