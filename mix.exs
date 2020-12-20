defmodule Simproved.MixProject do
  use Mix.Project

  def project do
    [
      app: :simproved,
      version: "0.1.0",
      elixir: "~> 1.11",
      escript: [main_module: Simproved],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nostrum, "~> 0.4"}
    ]
  end
end
