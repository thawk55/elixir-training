defmodule BookClub.Dams.ClubsDam do
  @moduledoc"""
    Data Access Module to access clubs schema.
  """

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

  def delete(id) do
    id
  end
end
