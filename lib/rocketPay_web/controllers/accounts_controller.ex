defmodule RocketPayWeb.AccountsController do
  use RocketPayWeb, :controller

  alias RocketPay.{Account, User}

  action_fallback RocketPayWeb.FallBackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- RocketPay.deposit(params) do
      conn
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end
end
