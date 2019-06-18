defmodule BookClub.Dams.MembersDam do
  @moduledoc """
    Data Access Module to access members schema.
  """

  import Ecto.Query
  alias BookClub.Member
  alias ElixirTraining.Repo

  def all() do
    Repo.all(from(m in Member))
  end

  def by_id(id) do
    Repo.one(from(m in Member, where: m.id == ^id))
  end

  def create(%{} = member) do
    member
    |> Member.create()
    |> Repo.insert()
  end

  def update(%Member{} = member, %{} = changes) do
    member
    |> Member.edit(changes)
    |> Repo.update()
  end

  def delete(%Member{} = member) do
    Repo.delete(member)
  end
end
