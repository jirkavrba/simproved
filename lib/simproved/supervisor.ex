defmodule Simproved.Supervisor do
  @moduledoc """
  """

  use Supervisor

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  @impl Supervisor
  def init(_arguments) do
    children = [Simproved.Consumer]
    Supervisor.init(children, strategy: :one_for_one)
  end
end
