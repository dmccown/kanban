defmodule Kanban.ProjectView do
  use Kanban.View

  def csrf_token(conn) do
    Plug.Conn.get_session(conn, :csrf_token)
  end
end
