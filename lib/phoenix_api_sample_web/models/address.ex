defmodule PhoenixApiSampleWeb.Address do
  use Ecto.Schema

  alias PhoenixApiSampleWeb.Address

  schema "address" do
    field :name, :string

    timestamps()
  end
end