defmodule OnXdarts.DartController do
  use OnXdarts.Web, :controller

  def get(conn, _params) do
    render conn, "index.json"
  end
end
