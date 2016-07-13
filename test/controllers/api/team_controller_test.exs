defmodule Musiny.TeamControllerTest do
  use Musiny.ConnCase

  alias Musiny.Team
  # @valid_attrs %{description: "some content", name: "some content"}
  # @invalid_attrs %{}
  # 
  # setup %{conn: conn} do
  #   {:ok, conn: put_req_header(conn, "accept", "application/json")}
  # end
  # 
  # test "lists all entries on index", %{conn: conn} do
  #   conn = get conn, api_team_path(conn, :index)
  #   assert json_response(conn, 200)["data"] == []
  # end
  # 
  # test "shows chosen resource", %{conn: conn} do
  #   team = Repo.insert! %Team{}
  #   conn = get conn, api_team_path(conn, :show, team)
  #   assert json_response(conn, 200)["data"] == %{"id" => team.id,
  #     "name" => team.name || "",
  #     "description" => team.description || ""}
  # end
  # 
  # test "renders page not found when id is nonexistent", %{conn: conn} do
  #   assert_error_sent 404, fn ->
  #     get conn, api_team_path(conn, :show, -1)
  #   end
  # end
end
