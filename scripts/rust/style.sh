#!/usr/bin/env bash

set -euo pipefail

for d in `find -maxdepth 2 -name Cargo.toml -printf '%h\n'`; do
    pushd $d
    cargo clippy --all --all-targets -- -D warnings
    popd
done
