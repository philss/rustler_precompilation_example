defmodule RustlerPrecompilationExample.MixProject do
  use Mix.Project

  @version "0.5.0"
  @source_url "https://github.com/philss/rustler_precompilation_example"

  def project do
    [
      app: :rustler_precompilation_example,
      version: @version,
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: "A rustler precomplication example",
      package: package(),
      deps: deps()
    ]
  end

  # When publishing a library to with precompiled NIFs to Hex,
  # is is mandatory to include a checksum file (along with other
  # necessary files in the library).
  #
  # Refer to the "The release flow"
  # in the "Precompilation guide" for more details:
  # https://hexdocs.pm/rustler_precompiled/precompilation_guide.html#the-release-flow
  defp package do
    [
      files: [
        "lib",
        "native",
        "checksum-*.exs",
        "mix.exs"
      ],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
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
      {:rustler_precompiled, "~> 0.4"},
      {:rustler, ">= 0.0.0", optional: true}
    ]
  end
end
