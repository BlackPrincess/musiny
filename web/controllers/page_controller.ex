defmodule Musiny.PageController do
  use Musiny.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
