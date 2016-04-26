ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Store.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Store.Repo --quiet)
Ecto.Adapters.SQL.Sandbox.mode(Store.Repo, :manual)
