defmodule RustlerPrecompilationExampleTest do
  use ExUnit.Case
  doctest RustlerPrecompilationExample

  test "greets the world" do
    assert RustlerPrecompilationExample.hello() == :world
  end
end
