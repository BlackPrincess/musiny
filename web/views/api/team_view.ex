defmodule Musiny.Api.TeamView do
  use Musiny.Web, :view

  def render("index.json", %{teams: teams}) do
    %{data: render_many(teams, Musiny.Api.TeamView, "team.json")}
  end

  def render("show.json", %{team: team}) do
    %{data: render_one(team, Musiny.Api.TeamView, "team.json")}
  end

  def render("team.json", %{team: team}) do
    %{id: team.id,
      name: team.name,
      description: team.description,
      purpose: team.purpose,
      sense_of_values: team.sense_of_values,
      goal: team.goal,
      kpi: team.kpi,
      establishment_on: team.establishment_on
    }
  end
end
