defmodule Kanban.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://test_user:test_pass@localhost/kanban"
  end

  def priv do
    app_dir(:kanban, "priv/repo")
  end
end
