defmodule HerokuTestApp.User do
  use HerokuTestApp.Web, :model

  schema "users" do
    field :name,  :string
    field :age,   :integer
    field :email, :string

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w(age email)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
