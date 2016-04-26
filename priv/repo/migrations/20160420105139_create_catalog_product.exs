defmodule Store.Repo.Migrations.CreateCatalog.Product do
  use Ecto.Migration

  def change do
    create table(:products, prefix: :catalog) do
      add :name, :string

      timestamps
    end

  end
end
