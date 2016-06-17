# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :logger,
  backends: [{LoggerLogstashBackend, :debug_log}, :console]

config :logger, :debug_log,
  host: "127.0.0.1",
  port: 10001,
  level: :debug,
  type: "test",
  metadata: [
  ]
