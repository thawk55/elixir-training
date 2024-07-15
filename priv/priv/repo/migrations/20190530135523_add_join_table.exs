defmodule ElixirTraining.Repo.Migrations.AddJoinTable do
  use Ecto.Migration

  def up do
    create table(:club_books) do
      add(:book_id, references(:books, on_delete: :nothing))
      add(:club_id, references(:clubs, on_delete: :nothing))
    end

    alter table(:members) do
      add(:club_id, references(:clubs))
    end
  end

  def down do
    drop(table(:club_books))

    alter table(:members) do
      remove(:club_id)
    end
  end
end
