defmodule Musiny.Team do
  use Musiny.Web, :model

  schema "teams" do
    field :name, :string
    field :description, :string
    field :purpose, :string
    field :sense_of_values, :string
    field :goal, :string
    field :kpi, :string
    field :establishment_on, Ecto.Date
    belongs_to :parent, Musiny.Parent

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :purpose, :sense_of_values, :goal, :kpi, :establishment_on])
    |> validate_required([:name, :description, :purpose, :sense_of_values, :goal, :kpi, :establishment_on])
    |> validate_length(:name, max: 100)
    |> validate_length(:description, max: 1000)
    |> validate_length(:purpose, max: 1000)
    |> validate_length(:sense_of_values, max: 1000)
    |> validate_length(:goal, max: 1000)
    |> validate_length(:kpi, max: 1000)
  end
  
  def for_select(query) do
    from(t in query, select: {t.name, t.id})
  end
  
  def name_contains(query, name_cont) do
    from t in query, where: like(t.name, ^"%#{name_cont || ""}%")
  end
  
  def search(query, params) do
    query |> name_contains(params["name_cont"])
  end
end
