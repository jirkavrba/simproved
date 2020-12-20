defmodule Simproved do
  @moduledoc """
  Simproved application entry point, basically just loads the environment and starts the consumer
  """

  def main(_arguments) do
    Simproved.Supervisor.start_link(name: Simproved.Consumer)
  end
end
