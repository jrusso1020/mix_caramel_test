defmodule MixCaramel.MixProject do
  use Mix.Project

  def project do
    [
      app: :mix_caramel,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      name: "mix_caramel",
      description: "Compile Caramel code with mix",
      deps: deps(),
      package: [
        maintainers: ["James Russo"],
        licenses: ["Apache-2.0"],
        links: %{"GitHub" => "https://github.com/jrusso1020/mix_caramel"}
      ]
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
