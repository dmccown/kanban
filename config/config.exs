# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :kanban, Kanban.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W12iDtRbYGlL91ijoqhWfGg9jqeJZi4QXch1gL3SPfVEE1eSF+y5GH4NcCXa8Ckv",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
