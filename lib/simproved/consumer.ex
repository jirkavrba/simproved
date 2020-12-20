defmodule Simproved.Consumer do

  use Nostrum.Consumer

  def start_link do
    Consumer.start_link(__MODULE__, max_restarts: 0)
  end
end
