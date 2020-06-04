defmodule PhoenixApiSampleWeb.AddressController do
  use PhoenixApiSampleWeb, :controller
  alias PhoenixApiSampleWeb.Address

  def index(conn, _params) do
    addresses = PhoenixApiSample.Repo.all(Address)

    render conn, address: addresses
  end
end