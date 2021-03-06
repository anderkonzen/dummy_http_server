defmodule DummyHttpServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :dummy_http_server,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :cowboy, :plug],
      mod: {DummyHttpServer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.5"},
      {:jason, "~> 1.0"},
      {:distillery, "~> 1.5"}
    ]
  end
end
