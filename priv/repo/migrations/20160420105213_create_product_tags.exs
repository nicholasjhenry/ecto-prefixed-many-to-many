defmodule Store.Repo.Migrations.CreateProductTags do
  use Ecto.Migration

  def change do
    create table(:product_tags, primary_key: false, prefix: :catalog) do
      add :product_id, references(:products)
      add :tag_id, references(:tags)
    end

    create unique_index(:product_tags, [:product_id, :tag_id], prefix: :catalog)
  end
end
