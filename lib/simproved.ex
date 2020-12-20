defmodule Simproved do
  @moduledoc """
  Simproved application entry point, basically just loads the environment and starts the consumer
  """
  use Application

  @impl true
  def start(_type, _arguments) do
    children = [Simproved.Supervisor]
    options = [strategy: :rest_for_one, name: Simproved.Supervisor]

    Supervisor.start_link(children, options)
  end
end
