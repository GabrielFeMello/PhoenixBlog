defmodule Hello.MyHello.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_length(:title, min: 6)
    |> validate_length(:title, max: 30)
    |> validate_required([:title, :body])
  end
end
