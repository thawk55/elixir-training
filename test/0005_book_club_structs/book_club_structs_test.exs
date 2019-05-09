defmodule BookClubStructsTest do
  use ExUnit.Case

  alias OldBookClub.{Book, Club, Member}

  describe "Check the Structs" do
    test "Check the Member struct" do
      assert %Member{} = %Member{first_name: "Jim", last_name: "Bob"}
    end

    test "Check the Book struct" do
      assert %Book{} = %Book{title: "Great Expectations", author: "Charles Dickens", pages: 544, genre: "Bildungsroman"}
    end

    test "Check the Club Struct" do
      assert %Club{} = %Club{name: "Test Club", meeting_day: "Tuesday"}
    end
  end
end
