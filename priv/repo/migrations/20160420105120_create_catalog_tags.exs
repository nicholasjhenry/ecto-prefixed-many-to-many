defmodule Store.Repo.Migrations.CreateCatalog.Tags do
  use Ecto.Migration

  def change do
    execute "CREATE SCHEMA catalog"

    create table(:tags, prefix: :catalog) do
      add :name, :string

      timestamps
    end

  end
end
