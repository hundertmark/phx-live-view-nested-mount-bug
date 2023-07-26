defmodule NestedWeb.PageLive do
  use NestedWeb, :live_view
  require Logger

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
    A live view.
    </div>
    <%= live_render(@socket, NestedWeb.NestedViewLive, id: "nested-view") %>
    """
  end
end
