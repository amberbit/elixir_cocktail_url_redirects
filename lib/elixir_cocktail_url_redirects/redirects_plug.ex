defmodule ElixirCocktailUrlRedirects.RedirectsPlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, options) do
    to = options[full_path(conn)]
    do_redirect(conn, to)
  end

  defp do_redirect(conn, nil), do: conn

  defp do_redirect(conn, to) do
    conn
      |> put_status(301)
      |> Phoenix.Controller.redirect(to: to)
      |> halt
  end
end
