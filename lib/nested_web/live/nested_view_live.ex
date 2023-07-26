defmodule NestedWeb.NestedViewLive do
  use NestedWeb, :live_view

  def mount(_params, _session, socket) do
    if connected?(socket) do
      Nested.Map.put(:nested_pid, self())
      if Nested.Map.get(:kill) do
        raise RuntimeError
      end
    end
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>A nested live view.</div>
    """
  end

  def handle_info(:kill, socket) do
    Nested.Map.put(:kill, true)
    raise RuntimeError
  end

  def handle_info(:raise, socket) do
    raise RuntimeError
  end

end
