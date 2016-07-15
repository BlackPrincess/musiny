# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Musiny.Repo.insert!(%Musiny.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Musiny.Repo.insert Musiny.User.changeset(%Musiny.User{}, %{nickname: "test", email: "test@example.com", password: "test"}) 
