$(O)/dlmalloc.o: src/dlmalloc.c src/dlmalloc/unistd.h 3rdparty/malloc.c
	mkdir -p $(O)
	$(CC) $(CFLAGS) -nostdlib -ffreestanding -nostdlibinc src/dlmalloc.c -isystem src/dlmalloc -isystem 3rdparty -c -o $(O)/dlmalloc.o


all: $(O)/dlmalloc.o