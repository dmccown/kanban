defmodule Kanban.ProjectController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html", projects: Kanban.Repo.all(Kanban.Project)
  end
end
