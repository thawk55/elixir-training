defmodule BookClub.Book do
  @moduledoc """
  Book Struct

  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    # need to add fields and their types
    # a Book has a title, author, pages, and genre
    # example: field(:field_name, :string)
    field(:title, :string)
    field(:author, :string)
    field(:pages, :integer)
    field(:genre, :string)
  end

  @fields [:title, :author, :pages, :genre]

  @doc """
  Creates a new book.
  """
  def create(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end

  @doc """
  Updates an existing book.
  """
  def edit(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
