cd $(dirname $0)
O=build/wasm64_clabi CC='clang-19 -target wasm64' CFLAGS="-DCLABI=1 -isystem 3rdparty/cloudabi-headers" make all
O=build/wasm64 CC='clang-19 -target wasm64' make all
O=build/amd64_clabi CC='clang-19 -target amd64' CFLAGS="-DCLABI=1 -isystem 3rdparty/cloudabi-headers" make all