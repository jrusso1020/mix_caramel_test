defmodule BasicProject.MixProject do
  use Mix.Project

  def project do
    [
      app: :basic_project,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # New items added for Gleam compilation
      compilers: [:caramel | Mix.compilers()],
      erlc_paths: ["src", "gen/src"]
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
      {:mix_caramel, path: "../../"}
    ]
  end
end
