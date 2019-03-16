defmodule OnXdarts.DartView do
  use OnXdarts.Web, :view

  def render("index.json", _opts) do
    %{hello: "world"}
  end
end
