defmodule RustlerPrecompilationExample.Native do
  version = Mix.Project.config()[:version]

  wrong_math =
    Application.compile_env(
      :rustler_precompilation_example,
      :build_with_wrong_math,
      System.get_env("RUSTLER_PRECOMP_WRONG_MATH") in ["1", "true"]
    )

  use RustlerPrecompiled,
    otp_app: :rustler_precompilation_example,
    crate: "example",
    base_url:
      "https://github.com/philss/rustler_precompilation_example/releases/download/v#{version}",
    force_build: System.get_env("RUSTLER_PRECOMPILATION_EXAMPLE_BUILD") in ["1", "true"],
    targets:
      Enum.uniq(["aarch64-unknown-linux-musl" | RustlerPrecompiled.Config.default_targets()]),
    variants: %{"x86_64-unknown-linux-gnu" => [wrong_math: fn -> wrong_math end]},
    version: version

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
