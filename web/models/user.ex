defmodule Musiny.User do
  use Musiny.Web, :model
  
  import Comeonin.Bcrypt, only: [hashpwsalt: 1]

  schema "users" do
    field :nickname, :string
    field :email, :string
    field :password_encrypted, :string
    field :disabled_at, Ecto.Date
    
    field :password, :string, virtual: true

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:nickname, :email, :password], [:disabled_at])
    |> validate_required([:nickname, :email, :password])
    |> unique_constraint(:email)
    |> generate_password_encrypted
  end
  
  def generate_password_encrypted(changeset) do
    put_change(changeset, :password_encrypted, get_password_encrypted(changeset.params["password"]))
  end
  
  def get_password_encrypted(password) do
    hashpwsalt(password)
  end
end
