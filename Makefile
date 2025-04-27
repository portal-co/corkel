$(O)/dlmalloc.o: src/dlmalloc.c src/dlmalloc/unistd.h 3rdparty/malloc.c
	mkdir -p build
	$(CC) -nostdlib src/dlmalloc.c -isystem src/dlmalloc -isystem 3rdparty -c -o $(O)/dlmalloc.o