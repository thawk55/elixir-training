defmodule BookClub.Dams.ClubsDam do
  @moduledoc"""
    Data Access Module to access clubs schema.
  """

  import Ecto.Query

  def all() do
    []
  end

  def by_id(id) do
    id
  end

  def create(%{} = club) do
    club
  end

  def update(%BookClub.Club{} = club, %{} = changes) do
    club
  end

  def delete(%BookClub.Club{} = club) do
    club
  end
end
