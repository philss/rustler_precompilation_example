defmodule RustlerPrecompilationExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :rustler_precompilation_example,
      version: "0.1.1",
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
      {:rustler, github: "philss/rustler", branch: "ps-support-precompiled-nifs", sparse: "rustler_mix"}
    ]
  end
end
