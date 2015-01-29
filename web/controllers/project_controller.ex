defmodule Kanban.ProjectController do
  use Phoenix.Controller
  alias Kanban.Project
  alias Kanban.Repo

  plug :action

  def index(conn, _params) do
    render conn, :index, projects: Repo.all(Project)
  end

  def new(conn, _params) do
    render conn, :new
  end

  def create(conn, %{"project"  => %{"name" => name}}) do
    project = %Project{name: name}

    Repo.insert(project)
    render conn, :index, projects: Repo.all(Project)
  end

  def delete(conn, _params) do

  end

  def edit(conn, _params) do

  end
end
