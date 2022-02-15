defmodule RustlerPrecompilationExample.Native do
  version = Mix.Project.config()[:version]

  if System.get_env("RUSTLER_PRECOMPILATION_EXAMPLE_BUILD") in ["1", "true"] do
    use Rustler,
      otp_app: :rustler_precompilation_example,
      crate: "example"
  else
    use RustlerPrecompiled,
      otp_app: :rustler_precompilation_example,
      crate: "example",
      base_url:
        "https://github.com/philss/rustler_precompilation_example/releases/download/v#{version}",
      version: version
  end

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
