defmodule PhoenixApiSampleWeb.AddressController do
  use PhoenixApiSampleWeb, :controller
  alias PhoenixApiSampleWeb.Address

  def index(conn, _params) do
    # addresses = PhoenixApiSample.Repo.all(Address)
    addresses = Address |> PhoenixApiSample.Repo.all()

    render conn, data: addresses
    # data: addressesの部分は`view`での引数と同じ形式になる
  end
end