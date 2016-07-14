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
  
  def render("help_wanteds.json", %{help_wanteds: help_wanteds}) do
    %{data: Enum.map(help_wanteds, fn help_wanted -> render(Musiny.Api.TeamView, "help_wanted.json", help_wanted: help_wanted) 
    end)}
  end
  
  def render("help_wanted.json", %{help_wanted: help_wanted}) do
    %{id: help_wanted.id,
      job: help_wanted.job,
      description: help_wanted.description,
      description_of_works: help_wanted.description_of_works,
      requirements: help_wanted.requirements,
      preferable_skills: help_wanted.preferable_skills,
      published_at: help_wanted.published_at
      # not_published_at: help_wanted.not_published_at
    }
  end
end
