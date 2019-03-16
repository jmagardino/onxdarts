use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :onXdarts, OnXdarts.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :onXdarts, OnXdarts.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "joe.magardino",
  password: "postgres",
  database: "onxdarts_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
