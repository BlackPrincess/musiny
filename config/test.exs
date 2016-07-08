use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :musiny, Musiny.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :musiny, Musiny.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("TEST_DB_USER") || System.get_env("DB_USER") || "postgres",
  password: System.get_env("TEST_DB_PASSWORD") || System.get_env("DB_PASSWORD") || "postgres",
  database: System.get_env("TEST_DB_NAME") || "musiny_test",
  hostname: System.get_env("TEST_DB_HOST") || System.get_env("DB_HOST") || "postgre95", # add "postgre95 127.0.01" to `/etc/hosts`
  pool: Ecto.Adapters.SQL.Sandbox
