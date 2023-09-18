#[cfg(not(feature = "wrong_math"))]
#[rustler::nif]
fn add(a: i64, b: i64) -> i64 {
    a + b
}

#[cfg(feature = "wrong_math")]
#[rustler::nif]
fn add(a: i64, b: i64) -> i64 {
    a + b + 2
}

rustler::init!("Elixir.RustlerPrecompilationExample.Native", [add]);
