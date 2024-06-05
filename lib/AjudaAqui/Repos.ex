defmodule AjudaAqui.Repos.UserRepository do
  @use Ecto.Repo

  import Ecto.Query

  def all do
    query do
      from u in AjudaAqui.Models.User,
        select: u
    end
  end

  # ... outras funções para CRUD
end

defmodule AjudaAqui.Repos.TaskRepository do
  @use Ecto.Repo

  import Ecto.Query

  def all do
    query do
      from t in AjudaAqui.Models.Task,
        select: t
    end
  end

  # ... outras funções para CRUD
end