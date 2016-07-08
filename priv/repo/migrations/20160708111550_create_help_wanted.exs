defmodule Musiny.Repo.Migrations.CreateHelpWanted do
  use Ecto.Migration

  def change do
    create table(:help_wanteds) do
      add :title, :string
      add :job, :string
      add :description, :text
      add :description_of_works, :text
      add :requirements, :text
      add :preferable_skills, :text
      add :published_at, :datetime
      add :not_published_at, :datetime
      add :team_id, references(:teams, on_delete: :nothing)

      timestamps()
    end
    create index(:help_wanteds, [:team_id])

  end
end
