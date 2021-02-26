defmodule RocketPayWeb.AccountsController do
  use RocketPayWeb, :controller

  alias RocketPay.{Account, User}
  alias RocketPay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback RocketPayWeb.FallBackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- RocketPay.deposit(params) do
      conn
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- RocketPay.withDraw(params) do
      conn
      |> put_status(:created)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- RocketPay.account_transaction(params) do
      conn
      |> put_status(:created)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
