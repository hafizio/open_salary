# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :open_salary,
  ecto_repos: [OpenSalary.Repo]

# Configures the endpoint
config :open_salary, OpenSalaryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "17n1BSKeuCS8wWDIdc3v15y796i2LBhn3NU0Q3E1RrkLJDZBafG2zO9e7xrlnWJL",
  render_errors: [view: OpenSalaryWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: OpenSalary.PubSub,
  live_view: [signing_salt: "mRuDHU/X"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
