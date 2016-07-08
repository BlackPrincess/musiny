defmodule Musiny.Repo.Migrations.CreateTeam do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :name, :text, null: false, default: ""
      add :description, :text, null: false, default: ""
      add :purpose, :text, null: false, default: ""
      add :sense_of_values, :text, null: false, default: ""
      add :goal, :text, null: false, default: ""
      add :kpi, :text, null: false, default: ""
      add :establishment_on, :date
      add :parent_id, references(:teams, on_delete: :nothing)

      timestamps()
    end
    create index(:teams, [:parent_id])

  end
end
