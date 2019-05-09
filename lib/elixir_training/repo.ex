defmodule ElixirTraining.Repo do
  use Ecto.Repo,
    otp_app: :elixir_training,
    adapter: Ecto.Adapters.Postgres
end
