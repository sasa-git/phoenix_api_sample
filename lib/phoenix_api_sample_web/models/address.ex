defmodule PhoenixApiSampleWeb.Address do
  use Ecto.Schema

  alias PhoenixApiSampleWeb.Address

  schema "addresses" do
    field :name, :string

    timestamps()
  end
end