/* Stub include file to support dlmalloc. */

// #include <__macro_PAGESIZE.h>
#include <stdint.h>
#if defined(__wasm__)
#define PAGESIZE 0x10000
#else
#define PAGESIZE 4096
#endif
#define sysconf(name) PAGESIZE
#define _SC_PAGESIZE

/* Declare sbrk. */
void *sbrk(intptr_t increment) __attribute__((__warn_unused_result__));
#if defined(CLABI) && !defined(__wasm__)
#include <cloudabi_syscalls.h>
#define MAP_ANONYMOUS CLOUDABI_MAP_ANON
#define MAP_PRIVATE CLOUDABI_MAP_PRIVATE
#define PROT_READ CLOUDABI_PROT_READ
#define PROT_WRITE CLOUDABI_PROT_WRITE
#define mmap(a, b, c, d, e, f)                                                 \
  ({                                                                           \
    void *$;                                                                   \
    cloudabi_sys_mem_map(a, b, c, d, e, f, &$);                                \
    $;                                                                          \
  })
#endif