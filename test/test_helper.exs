ExUnit.start

Mix.Task.run "ecto.create", ~w(-r HerokuTestApp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r HerokuTestApp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(HerokuTestApp.Repo)

