defmodule Simproved do
  @moduledoc """
  Simproved application entry point, basically just loads the environment and starts the consumer
  """
  use Application

  @impl true
  def start(_type, _arguments) do
    Supervisor.start_link(
      [ Simproved.Consumer ],
      [
        strategy: :rest_for_one,
        name: Simproved.Consumer
      ]
    )
  end
end
