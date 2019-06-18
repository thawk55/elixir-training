defmodule ElixirTraining.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_training,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: ["lib", "test/support"],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:mix_test_watch, "~> 0.8"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
