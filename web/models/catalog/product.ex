defmodule Store.Catalog.Product do
  use Store.Web, :model

  alias Store.Catalog.Tag

  @schema_prefix "catalog"

  schema "products" do
    many_to_many :tags, Tag, join_through: "product_tags"
    field :name, :string

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_field)
  end
end
