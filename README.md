# Rustler Precompilation Example

This is a sample project for using precompiled NIFs with Rustler.

In order to use it, you either set the `RUSTLER_PRECOMPILATION_EXAMPLE_BUILD` env var
to force compilation, or you first run the following mix task:

    mix rustler_precompiled.download RustlerPrecompilationExample.Native --only-local

This is going to save the checksum file locally, which is required for the project to
load the NIF from the internet.

After that, enter the console with `iex -S mix` and test the `add/2` function:

```elixir
RustlerPrecompilationExample.Native.add(2, 2)
```

The GitHub Action responsible for building the NIFs can be found at [.github/workflows/release.yml](https://github.com/philss/rustler_precompilation_example/blob/main/.github/workflows/release.yml).

For further details check the [RustlerPrecompiled project](https://github.com/philss/rustler_precompiled).
