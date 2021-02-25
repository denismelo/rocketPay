defmodule RocketPayWeb.AccountsView do
  alias RocketPay.Account

  def render("update.json", %{
        account: %Account{id: account_id, balance: balance}
      }) do
    %{
      message: "Ballance changed Successfully",
      account: %{
        id: account_id,
        balance: balance
      }
    }
  end
end
