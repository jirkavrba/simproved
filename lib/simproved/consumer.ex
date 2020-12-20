defmodule Simproved.Consumer do

  use Nostrum.Consumer

  def start_link do
    Consumer.start_link(__MODULE__, max_restarts: 0, name: __MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, message, _ws_state}) do
    IO.inspect message
  end

  @doc """
  The default handler that catches all other cases and does nothing
  """
  def handle_event(_other), do: :noop
end
