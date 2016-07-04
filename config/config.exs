# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :musiny,
  ecto_repos: [Musiny.Repo]
  
config :musiny, MyApp.Gettext, default_locale: "ja"

# Configures the endpoint
config :musiny, Musiny.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eZt2+1JRDHyvH5hYl6CuQX7Yeh2Gg7Q6jisaGbJ2olCEdqX5NSfDPFcxpvlrOEeG",
  render_errors: [view: Musiny.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Musiny.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures template engines
config :phoenix, :template_engines,
 haml: PhoenixHaml.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
