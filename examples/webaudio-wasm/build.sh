#!/bin/sh

# For more comments about what's going on here, see the `hello_world` example

set -ex

cargo build --target wasm32-unknown-unknown
cargo run --manifest-path ../../crates/cli/Cargo.toml \
  --bin wasm-bindgen -- \
  ../../target/wasm32-unknown-unknown/debug/webaudio_wasm.wasm --out-dir .

npm install
npm run serve
