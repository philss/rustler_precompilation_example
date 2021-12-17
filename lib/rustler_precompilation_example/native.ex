defmodule RustlerPrecompilationExample.Native do
  use Rustler, otp_app: :rustler_precompilation_example, crate: "example"

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
