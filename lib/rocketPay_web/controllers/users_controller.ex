defmodule RocketPayWeb.UsersController do
  use RocketPayWeb, :controller

  alias RocketPay.User

  action_fallback RocketPayWeb.FallBackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- RocketPay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
