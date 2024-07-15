ExUnit.configure(exclude: [pending: true])
ExUnit.start()

# Ensure Ecto and the Repo are started
{:ok, _} = Application.ensure_all_started(:ecto_sql)
{:ok, _} = ElixirTraining.Repo.start_link()

Ecto.Adapters.SQL.Sandbox.mode(ElixirTraining.Repo, :manual)
