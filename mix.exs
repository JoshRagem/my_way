defmodule MyWay.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_way,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elvis: elvis(),
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
      {:elvis, "~> 0.4.1", hex: :elvis_core},
    ]
  end

  defp elvis do
    [%{
      dirs: ['src'],
      filter: '*.erl',
      ruleset: :erl_files
    }]
  end
end
