defmodule Musiny.TeamTest do
  use Musiny.ModelCase

  alias Musiny.Team

  @valid_attrs %{description: "some content", establishment_on: %{day: 17, month: 4, year: 2010}, goal: "some content", kpi: "some content", name: "some content", purpose: "some content", sense_of_values: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Team.changeset(%Team{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Team.changeset(%Team{}, @invalid_attrs)
    refute changeset.valid?
  end
end
