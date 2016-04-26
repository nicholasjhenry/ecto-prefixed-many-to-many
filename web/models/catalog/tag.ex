defmodule Store.Catalog.Tag do
  use Store.Web, :model

  @schema_prefix "catalog"

  schema "tags" do
    field :name, :string

    timestamps
  end

  @required_fields ~w(name)a
  @optional_fields ~w()a

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end
end
