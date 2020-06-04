defmodule PhoenixApiSampleWeb.AddressController do
  use PhoenixApiSampleWeb, :controller

  def index(conn, _params) do
    map = %{1 => "Tokyo", 2 => "Osaka", 3 => "Nara"}

    render conn, address: map
  end
end