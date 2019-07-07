defmodule HkObservatory.MixProject do
  use Mix.Project

  def project do
    [
      app: :hk_observatory,
      version: "0.1.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "HkObservatory",
      deps: deps(),
      source_url: "https://github.com/thomascharbonnel/hk_observatory_elixir"
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
      {:sweet_xml, "~> 0.6.5"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "A simple client for HK's Weather RSS."
  end

  defp package do
    [
      name: "hk_observatory",
      files: ~w(lib README.md),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/thomascharbonnel/hk_observatory_elixir"}
    ]
  end
end
