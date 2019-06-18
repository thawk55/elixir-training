defmodule ClubsDamTest do
  use ElixirTraining.Case

  alias BookClub.Club
  alias BookClub.Dams.{BooksDam, ClubBooksDam, ClubsDam, MembersDam}

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
      {:ok, club} = ClubsDam.create(%{name: "Best Book Club", meeting_day: "Tuesday"})
      refute is_nil(club.id)
    end

    test "update/2 a club" do
      {:ok, club1} = create_club()
      {:ok, updated_club} = ClubsDam.update(club1, %{name: "New Name"})
      assert updated_club.name == "New Name"
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

  describe "join queries" do
    setup do
      {:ok, club} = ClubsDam.create(%{name: "Book Club", meeting_day: "Monday"})

      {:ok, book1} =
        BooksDam.create(%{title: "Book", author: "Some Guy", pages: 1, genre: "Mystery"})

      {:ok, book2} =
        BooksDam.create(%{title: "Book 2", author: "Some Other Guy", pages: 1, genre: "Mystery"})

      {:ok, _} = ClubBooksDam.create(%{book_id: book1.id, club_id: club.id})
      {:ok, _} = ClubBooksDam.create(%{book_id: book2.id, club_id: club.id})

      {:ok, member1} =
        MembersDam.create(%{club_id: club.id, first_name: "Bob", last_name: "Smith"})

      {:ok, member2} =
        MembersDam.create(%{club_id: club.id, first_name: "Joe", last_name: "Workman"})

      {:ok, member3} =
        MembersDam.create(%{club_id: club.id, first_name: "Ricky", last_name: "Doodah"})

      {:ok,
       %{
         club: club,
         book1: book1,
         book2: book2,
         member1: member1,
         member2: member2,
         member3: member3
       }}
    end

    test "can get members of the club", %{
      club: club,
      member1: member1,
      member2: member2,
      member3: member3
    } do
      members = ClubsDam.get_members_of_club(club)
      assert length(members) == 3
      assert Enum.any?(members, &(&1.id == member1.id))
      assert Enum.any?(members, &(&1.id == member2.id))
      assert Enum.any?(members, &(&1.id == member3.id))
    end
  end
end
