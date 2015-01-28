defmodule Kanban.Repo.Migrations.InitialProjectsCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE projects( \
      id serial primary key, \
      name varchar(255), \
      created_at timestamp, \
      updated_at timestamp)"
  end

  def down do
    "DROP TABLE projects"
  end
end
