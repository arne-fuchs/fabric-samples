#!/bin/bash
cargo clean
tar -cvzf code.tar.gz src Cargo.toml Cargo.lock
tar -cvzf basic.tar.gz code.tar.gz metadata.json
