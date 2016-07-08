defmodule Musiny.Router do
  use Musiny.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Musiny do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
  
  scope "/admin", Musiny, as: :admin do
    pipe_through :browser # Use the default browser stack

    # get "/", PageController, :index
    resources "/teams", Admin.TeamController
  end

  # Other scopes may use custom stacks.
  scope "/api", Musiny, as: :api do
    pipe_through :api
    
    resources "/teams", Api.TeamController, only: [:index, :show]
  end
end
