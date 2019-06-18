defmodule BookClub.Dams.ClubsDam do
  @moduledoc """
    Data Access Module to access clubs schema.
  """

  import Ecto.Query
  alias BookClub.Club
  alias ElixirTraining.Repo

  def all() do
    Repo.all(from(c in Club))
  end

  def by_id(id) do
    Repo.one(from(c in Club, where: c.id == ^id))
  end

  def create(%{} = club) do
    club
    |> Club.create()
    |> Repo.insert()
  end

  def update(%BookClub.Club{} = club, %{} = changes) do
    club
    |> Club.edit(changes)
    |> Repo.update()
  end

  def delete(%BookClub.Club{} = club) do
    Repo.delete(club)
  end

  # Should return the members of the club
  def get_members_of_club(club) do
    []
  end
end
