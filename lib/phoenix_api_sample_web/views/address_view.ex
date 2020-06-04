defmodule PhoenixApiSampleWeb.AddressView do
  use PhoenixApiSampleWeb, :view

  def render("index.json", %{address: address}) do
    address
  end
end