defmodule Microservice.ContactTest do
  use Microservice.ModelCase

  alias Microservice.Contact

  @valid_attrs %{email: "some content", fone: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Contact.changeset(%Contact{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Contact.changeset(%Contact{}, @invalid_attrs)
    refute changeset.valid?
  end
end
