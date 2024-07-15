# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
import Config

config :elixir_training, ElixirTraining.Repo,
  database: "elixir-training-test",
  username: "postgres",
  password: "",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :elixir_training,
  ecto_repos: [ElixirTraining.Repo]

config :mix_test_watch,
  clear: true
