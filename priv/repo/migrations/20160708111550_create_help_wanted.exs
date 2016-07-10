defmodule Musiny.Repo.Migrations.CreateHelpWanted do
  use Ecto.Migration

  def change do
    create table(:help_wanteds) do
      add :title, :string, null: false, default: ""
      add :job, :string, null: false, default: ""
      add :description, :text, null: false, default: ""
      add :description_of_works, :text, null: false, default: ""
      add :requirements, :text, null: false, default: ""
      add :preferable_skills, :text, null: false, default: ""
      add :published_at, :datetime
      add :not_published_at, :datetime
      add :team_id, references(:teams, on_delete: :nothing), null: false

      timestamps()
    end
    create index(:help_wanteds, [:team_id])

  end
end
