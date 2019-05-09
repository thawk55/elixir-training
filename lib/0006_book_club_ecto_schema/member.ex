defmodule BookClub.Member do
  @moduledoc """
  Book Struct

  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "members" do
    # need to add fields and their types
    # a Member has a first_name, and a last_name
    # example: field(:field_name, :string)
    field(:first_name, :string)
    field(:last_name, :string)
  end

  @fields [:first_name, :last_name]

  @doc """
  Creates a new member.
  """
  def create(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end

  @doc """
  Updates an existing member.
  """
  def edit(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
