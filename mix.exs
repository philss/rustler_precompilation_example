defmodule RustlerPrecompilationExample.MixProject do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :rustler_precompilation_example,
      version: @version,
      elixir: "~> 1.12",
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
      {:rustler, "~> 0.23.0"},
      {:rustler_precompiled, github: "philss/rustler_precompiled", branch: "main"}
    ]
  end
end
