defmodule UeberauthReddit.Mixfile do
  use Mix.Project

  @version "0.2.0"
  @url "https://github.com/schwarz/ueberauth_reddit"

  def project() do
    [
      app: :ueberauth_reddit,
      version: @version,
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      description: "An Ueberauth strategy for Reddit authentication.",
      deps: deps(),
      name: "Ueberauth Reddit",
      package: package(),
      source_url: @url
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps() do
    [
      {:oauth2, "~> 1.0 or ~> 2.0"},
      # {:ueberauth, "~> 0.6"},
      # Fix for now to avoid retired version
      {:ueberauth, "0.10.5"},
      {:ex_doc, "~> 0.19", only: [:dev], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  def package() do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Bernhard Schwarz"],
      licenses: ["MIT"],
      links: %{"GitHub" => @url}
    ]
  end
end
