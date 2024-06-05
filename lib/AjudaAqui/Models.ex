defmodule AjudaAqui.Models.User do
  @use Ecto.Schema

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
  end
end

defmodule AjudaAqui.Models.Task do
  @use Ecto.Schema

  schema "tasks" do
    field :title, :string
    field :description, :text
    field :location, :string
    field :status, :enum, values: [:pending, :in_progress, :completed]
    belongs_to :user, AjudaAqui.Models.User
  end
end