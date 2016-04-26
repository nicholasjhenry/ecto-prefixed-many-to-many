defmodule Store.Catalog.PrefixTest do
  use Store.ModelCase

  alias Store.Catalog.Product
  alias Store.Catalog.Tag

  test "verify insert for has many to many with prefix" do
    tag_changeset = Store.Repo.insert!(%Tag{name: "tag test"})
      |> Ecto.Changeset.change

    %Product{}
    |> Product.changeset(%{name: "product test"})
    |> Ecto.Changeset.put_assoc(:tags, [tag_changeset])
    |> Store.Repo.insert!
  end
end
