defmodule PhoenixApiSampleWeb.AddressView do
  use PhoenixApiSampleWeb, :view

  def render("index.json", %{address: addresses}) do
    %{
      address: Enum.map(addresses, &address_json/1)
    }
  end

  def address_json(address_json) do
    %{
      id: address_json.id,
      name: address_json.name,
      inserted_at: address_json.inserted_at,
      updated_at: address_json.updated_at
    }
  end
end