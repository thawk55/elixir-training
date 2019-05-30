defmodule MembersDamTest do
  use ExUnit.Case

  alias BookClub.{Club, Member}
  alias BookClub.Dams.MembersDam

  describe "Queries for Members" do
    test "can get all/0" do
      {:ok, member1} = create_member()
      {:ok, member2} = create_member()
      members = MembersDam.all()
      assert length(members) == 2
      assert Enum.any?(members, fn b -> b.id == member1.id end)
      assert Enum.any?(members, fn b -> b.id == member2.id end)
    end

    test "can get by_id/1" do
      {:ok, member1} = create_member()
      {:ok, member2} = create_member()
      assert member1 == MembersDam.by_id(member1.id)
      assert member2 == MembersDam.by_id(member2.id)
    end

    test "create/1 new member" do
      {:ok, %{club_id: club_id}} = create_member()
      member = MembersDam.create(%{first_name: "Bob", last_name: "Builder", club_id: club_id})
      refute is_nil(member.id)
    end

    test "update/2 a member" do
      {:ok, member1} = create_member()
      updated_member = MembersDam.update(member1, %{first_name: "New Name"})
      assert updated_member.title == "New Name"
      assert updated_member.id == member1.id
    end

    test "delete/1 a member" do
      {:ok, member1} = create_member()
      MembersDam.delete(member1)
      assert is_nil(MembersDam.by_id(member1.id))
    end
  end

  def create_member() do
    {:ok, club} = ElixirTraining.Repo.insert(
      Club.create(%{
        name: "Name#{Enum.random(1..100)}",
        meeting_day: "Monday"
      })
    )
    ElixirTraining.Repo.insert(
      Member.create(%{
        first_name: "First Name#{Enum.random(1..100)}",
        last_name: "Last Name#{Enum.random(1..100)}",
        club_id: club.id
      })
    )
  end
end
