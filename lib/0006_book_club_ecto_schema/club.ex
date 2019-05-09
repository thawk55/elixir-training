defmodule BookClub.Club do
  @moduledoc """
  Book Struct

  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "clubs" do
    # need to add fields and their types
    # a Club has a name and a meeting_day
    # meeting_day should have a default
    # example: field(:field_name, :string)
    field(:name, :string)
    field(:meeting_day, :string, default: "Monday")
  end

  @fields [:name, :meeting_day]

  @doc """
  Creates a new club.
  """
  def create(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end

  @doc """
  Updates an existing club.
  """
  def edit(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
