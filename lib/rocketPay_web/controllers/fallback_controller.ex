defmodule RocketPayWeb.FallBackController do
  use RocketPayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(RocketPayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
