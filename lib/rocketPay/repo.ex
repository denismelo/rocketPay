defmodule RocketPay.Repo do
  use Ecto.Repo,
    otp_app: :rocketPay,
    adapter: Ecto.Adapters.Postgres
end
