defmodule ElixirCocktailUrlRedirects.Router do
  use ElixirCocktailUrlRedirects.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  scope "/", ElixirCocktailUrlRedirects do
    pipe_through :browser # Use the default browser stack

    get "/page", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirCocktailUrlRedirects do
  #   pipe_through :api
  # end
end
