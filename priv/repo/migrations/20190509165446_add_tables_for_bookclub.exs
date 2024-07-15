defmodule ElixirTraining.Repo.Migrations.AddTablesForBookclub do
  use Ecto.Migration

  def up do
    create table(:books) do
      add(:title, :string, null: false)
      add(:author, :string, null: false)
      add(:genre, :string)
      add(:pages, :integer, null: false)
    end

    create table(:clubs) do
      add(:name, :string, null: false)
      add(:meeting_day, :string, null: false)
    end

    create table(:members) do
      add(:first_name, :string, null: false)
      add(:last_name, :string, null: false)
    end
  end

  def down do
    drop(table(:books))
    drop(table(:clubs))
    drop(table(:members))
  end
end
