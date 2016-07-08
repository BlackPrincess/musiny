defmodule Musiny.HelpWanted do
  use Musiny.Web, :model

  schema "help_wanteds" do
    field :title, :string
    field :job, :string
    field :description, :string
    field :description_of_works, :string
    field :requirements, :string
    field :preferable_skills, :string
    field :published_at, Ecto.DateTime
    field :not_published_at, Ecto.DateTime
    belongs_to :team, Musiny.Team

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :job, :description, :description_of_works, :requirements, :preferable_skills, :published_at, :not_published_at])
    |> validate_required([:title, :job, :description, :description_of_works, :requirements, :preferable_skills, :published_at, :not_published_at])
  end
end
