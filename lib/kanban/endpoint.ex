defmodule Kanban.Endpoint do
  use Phoenix.Endpoint, otp_app: :kanban

  plug Plug.Static,
    at: "/", from: :kanban

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_kanban_key",
    signing_salt: "AFoGO66Y",
    encryption_salt: "QfW/A/8y"

  plug :router, Kanban.Router
end
