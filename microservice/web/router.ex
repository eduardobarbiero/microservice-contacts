defmodule Microservice.Router do
  use Microservice.Web, :router
 pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Microservice do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/contacts", ContactController, origins: ["*"]	  
    end
  end
end
