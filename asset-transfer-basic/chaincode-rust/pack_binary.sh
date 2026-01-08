#!/bin/bash
RUSTFLAGS="-C target-feature=+crt-static" cargo build --target x86_64-unknown-linux-gnu
cp target/x86_64-unknown-linux-gnu/debug/chaincode chaincode
tar -cvzf code.tar.gz chaincode
tar -cvzf basic.tar.gz code.tar.gz metadata.json
rm chaincode code.tar.gz
