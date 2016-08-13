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
    
    scope "/auth" do
      get "/:provider", AuthController, :login
      get "/:provider/callback", AuthController, :callback
      post "/identity/callback", AuthController, :identity_callback
    end

    get "/", PageController, :index
    get "/app/*any", PageController, :index
  end
  
  scope "/admin", Musiny, as: :admin do
    pipe_through :browser # Use the default browser stack

    # get "/", PageController, :index
    resources "/teams", Admin.TeamController, except: [:delete]
    resources "/help_wanteds", Admin.HelpWantedController, except: [:delete]
  end

  # Other scopes may use custom stacks.
  scope "/api", Musiny, as: :api do
    pipe_through :api
    
    resources "/teams", Api.TeamController, only: [:index, :show]
    get "/teams/:id/help_wanteds", Api.TeamController, :help_wanteds
  end
end
