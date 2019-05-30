defmodule ClubsDamTest do
  use ExUnit.Case

  alias BookClub.Club
  alias BookClub.Dams.ClubsDam

  describe "Queries for Clubs" do
    test "can get all/0" do
      {:ok, club1} = create_club()
      {:ok, club2} = create_club()
      clubs = ClubsDam.all()
      assert length(clubs) == 2
      assert Enum.any?(clubs, fn b -> b.id == club1.id end)
      assert Enum.any?(clubs, fn b -> b.id == club2.id end)
    end

    test "can get by_id/1" do
      {:ok, club1} = create_club()
      {:ok, club2} = create_club()
      assert club1 == ClubsDam.by_id(club1.id)
      assert club2 == ClubsDam.by_id(club2.id)
    end

    test "create/1 new club" do
      club = ClubsDam.create(%{name: "Best Book Club", meeting_day: "Tuesday"})
      refute is_nil(club.id)
    end

    test "update/2 a club" do
      {:ok, club1} = create_club()
      updated_club = ClubsDam.update(club1, %{name: "New Name"})
      assert updated_club.title == "New Name"
      assert updated_club.id == club1.id
    end

    test "delete/1 a club" do
      {:ok, club1} = create_club()
      ClubsDam.delete(club1)
      assert is_nil(ClubsDam.by_id(club1.id))
    end
  end

  def create_club() do
    ElixirTraining.Repo.insert(
      Club.create(%{
        name: "Name#{Enum.random(1..100)}",
        meeting_day: "Monday"
      })
    )
  end
end
