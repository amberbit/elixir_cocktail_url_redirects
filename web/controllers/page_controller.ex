defmodule ElixirCocktailUrlRedirects.PageController do
  use ElixirCocktailUrlRedirects.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
