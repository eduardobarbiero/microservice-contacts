defmodule Microservice.V1.ContactView do
  use Microservice.Web, :view

  def render("index.json", %{contacts: contacts}) do
    %{data: render_many(contacts, Microservice.V1.ContactView, "contact.json")}
  end

  def render("show.json", %{contact: contact}) do
    %{data: render_one(contact, Microservice.V1.ContactView, "contact.json")}
  end

def render("contact.json", %{contact: contact}) do
    %{id: contact.id,
      name: contact.name,
      fone: contact.fone,
      email: contact.email}
  end
end
