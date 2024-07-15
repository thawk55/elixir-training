defmodule ElixirTraining.Case do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias ElixirTraining.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
      import ElixirTraining.Case
    end
  end

  setup tags do
    opts = tags |> Map.take([:isolation]) |> Enum.to_list()
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ElixirTraining.Repo, opts)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(ElixirTraining.Repo, {:shared, self()})
    end

    :ok
  end
end
