defmodule RocketPay do
  alias RocketPay.Users.Get, as: UserGet
  alias RocketPay.Users.Create, as: UserCreate

  alias RocketPay.Accounts.Deposit
  alias RocketPay.Accounts.WithDraw

  defdelegate get_user(params), to: UserGet, as: :call
  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call
  defdelegate withDraw(params), to: WithDraw, as: :call
end
