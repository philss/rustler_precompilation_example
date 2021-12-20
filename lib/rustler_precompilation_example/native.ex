defmodule RustlerPrecompilationExample.Native do
  version = Mix.Project.config()[:version]

  use Rustler, otp_app: :rustler_precompilation_example, crate: "example", precompiled: [
    base_url: "https://github.com/philss/rustler_precompilation_example/releases/download/v#{version}",
    version: version
  ]

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
