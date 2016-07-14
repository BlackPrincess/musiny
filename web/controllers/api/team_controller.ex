defmodule Musiny.Api.TeamController do
  use Musiny.Web, :controller

  alias Musiny.Team
  alias Musiny.HelpWanted

  def index(conn, params) do
    teams = Team
      |> Team.search(params)
      |> Repo.all
    render(conn, "index.json", teams: teams)
  end
  
  def show(conn, %{"id" => id}) do
    team = Repo.get!(Team, id)
    render(conn, "show.json", team: team)
  end
  
  def help_wanteds(conn, %{"id" => id}) do
    help_wanteds = HelpWanted
      |> where([a], a.team_id == ^id)
      |> Repo.all
    render(conn, "help_wanteds.json", help_wanteds: help_wanteds)
  end
end
