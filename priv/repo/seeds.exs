# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     AgileTracker.Repo.insert!(%AgileTracker.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias AgileTracker.Repo
alias AgileTracker.Group

for group <- ~w(Work Personal) do
  Repo.get_by(Group, name: group) ||
    Repo.insert!(%Group{name: group})
end
