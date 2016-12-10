# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :agile_tracker,
  ecto_repos: [AgileTracker.Repo]

# Configures the endpoint
config :agile_tracker, AgileTracker.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QGiN2XGr3nxjzAiXiVtFMRLlarMUGyluYcW3RKxPAZezY8KkltgUjvPYkrtV590P",
  render_errors: [view: AgileTracker.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AgileTracker.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
