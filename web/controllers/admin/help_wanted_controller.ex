defmodule Musiny.Admin.HelpWantedController do
  use Musiny.Web, :controller

  plug :put_layout, {Musiny.Admin.LayoutView, "app.html"}
  alias Musiny.HelpWanted

  def index(conn, _params) do
    help_wanteds = Repo.all(HelpWanted)
    render(conn, "index.html", help_wanteds: help_wanteds)
  end

  def new(conn, _params) do
    changeset = HelpWanted.changeset(%HelpWanted{})
    render(conn, "new.html", changeset: changeset, team_list: team_list)
  end

  def create(conn, %{"help_wanted" => help_wanted_params}) do
    changeset = HelpWanted.changeset(%HelpWanted{}, help_wanted_params)

    case Repo.insert(changeset) do
      {:ok, _help_wanted} ->
        conn
        |> put_flash(:info, "Help wanted created successfully.")
        |> redirect(to: admin_help_wanted_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset, team_list: team_list)
    end
  end

  def show(conn, %{"id" => id}) do
    help_wanted = Repo.get!(HelpWanted, id) |> Repo.preload(:team)
    render(conn, "show.html", help_wanted: help_wanted)
  end

  def edit(conn, %{"id" => id}) do
    help_wanted = Repo.get!(HelpWanted, id)
    changeset = HelpWanted.changeset(help_wanted)
    render(conn, "edit.html", help_wanted: help_wanted, changeset: changeset, team_list: team_list)
  end

  def update(conn, %{"id" => id, "help_wanted" => help_wanted_params}) do
    help_wanted = Repo.get!(HelpWanted, id)
    changeset = HelpWanted.changeset(help_wanted, help_wanted_params)

    case Repo.update(changeset) do
      {:ok, help_wanted} ->
        conn
        |> put_flash(:info, "Help wanted updated successfully.")
        |> redirect(to: admin_help_wanted_path(conn, :show, help_wanted))
      {:error, changeset} ->
        render(conn, "edit.html", help_wanted: help_wanted, changeset: changeset, team_list: team_list)
    end
  end
  
  def team_list do
    Musiny.Team |> Musiny.Team.for_select |> Repo.all
  end
end
