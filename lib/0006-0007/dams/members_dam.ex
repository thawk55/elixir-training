defmodule BookClub.Dams.MembersDam do
  @moduledoc"""
    Data Access Module to access members schema.
  """

  import Ecto.Query

  def all() do
    []
  end

  def by_id(id) do
    id
  end

  def create(%{} = member) do
    member
  end

  def update(%BookClub.Member{} = member, %{} = changes) do
    member
  end

  def delete(%BookClub.Member{} = member) do
    member
  end
end
