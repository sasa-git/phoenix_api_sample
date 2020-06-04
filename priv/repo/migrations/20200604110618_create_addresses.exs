defmodule PhoenixApiSample.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :name, :string

      timestamps()
    end
  end
end