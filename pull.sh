cd $(dirname $0)
mkdir -p 3rdparty
TMP=$(mktemp -d)
git clone --depth 1 https://github.com/portal-co/cloudabi.git $TMP/cloudabi
cp -r $TMP/cloudabi/headers ./3rdparty/cloudabi-headers
git clone --depth 1 https://github.com/WebAssembly/wasi-libc.git $TMP/wasi-libc
cp $TMP/wasi-libc/dlmalloc/src/malloc.c ./3rdparty/malloc.c

rm -rf $TMP