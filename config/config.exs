# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :onXdarts,
  ecto_repos: [OnXdarts.Repo]

# Configures the endpoint
config :onXdarts, OnXdarts.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PF/yBM6tUH6NENd9u7KYfh9XRrbeX3DWP6dz+o6c/+6LYgbscjuklByI0/ZGjpKU",
  render_errors: [view: OnXdarts.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OnXdarts.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
