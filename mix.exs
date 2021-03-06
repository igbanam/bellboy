defmodule Bellboy.MixProject do
  use Mix.Project

  def project do
    [
      app: :bellboy,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :table_rex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.2"},
      {:poison, "~> 4.0"},
      {:table_rex, "~> 2.0"},
    ]
  end

  defp escript do
    [main_module: Bellboy]
  end
end
