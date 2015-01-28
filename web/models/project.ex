defmodule Kanban.Project do
  use Ecto.Model

  schema "projects" do
    field :name, :string
    field :created_at, :datetime, default: Ecto.DateTime.local
    field :updated_at, :datetime, default: Ecto.DateTime.local
  end
end
