defmodule Musiny.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :nickname, :string, null: false, default: ""
      add :email, :string, null: false, default: ""
      add :password_encrypted, :string, null: false, default: ""
      add :disabled_at, :datetime

      timestamps()
    end
    create unique_index(:users, [:email])
  end
end
