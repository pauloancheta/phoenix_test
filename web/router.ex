defmodule HerokuTestApp.Router do
  use HerokuTestApp.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HerokuTestApp do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController # Add this line
  end

  # Other scopes may use custom stacks.
  scope "/api", HerokuTestApp.API, as: :api do
    pipe_through :api
    resources "/users", UserController
  end

end
