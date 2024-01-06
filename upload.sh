#!/usr/bin/env bash

set -euo pipefail

cd ..
just build-wasm --release
cd -

rm -f index.html macroquad.js planet-protector.*.js planet-protector_bg.*.wasm
cp -r ../dist/* .
git add .
git amend
git push -f
