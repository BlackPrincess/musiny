defmodule Musiny.AuthController do
  use Musiny.Web, :controller
  
  plug Ueberauth 
  alias Musiny.User
  
  def login(conn, _params) do
    conn 
      |> put_layout(false)
      |> render("login.html", callback_url: auth_path(conn, :identity_callback))
  end
  
  def identity_callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do
    if true do
      conn
      |> put_flash(:error, "something wrong.")
      |> login(params)
    else
      conn
      |> put_flash(:info, "Successfully authenticated.") # TODO: flash message will does not works :(
      |> put_session(:current_user, nil)
      |> redirect(to: "/")
    end
  end
end
