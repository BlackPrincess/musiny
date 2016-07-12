defmodule Musiny.Api.TeamController do
  use Musiny.Web, :controller

  alias Musiny.Team

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
end
