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
  end
end
