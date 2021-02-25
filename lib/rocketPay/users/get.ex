defmodule RocketPay.Users.Get do
  alias RocketPay.{Repo, User}

  def call(%{"id" => user_id}) do
    case Repo.get(User, user_id) do
      nil -> {:error, "User not Found"}
      user -> preload_data(user)
    end
  end

  defp preload_data(user) do
    {:ok, Repo.preload(user, :account)}
  end
end
