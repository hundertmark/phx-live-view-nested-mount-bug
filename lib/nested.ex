defmodule Nested do
  @moduledoc """
  Nested keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def send(flag) do
    send(Nested.Map.get(:nested_pid), flag)
  end
end
