#include "include/inc.h"

#define MAX(x, y) ((x > y) ? (x) : (y))

void *xrealloc(void *ptr, size_t num_bytes)
{
	ptr = realloc(ptr, num_bytes);
	if(!ptr)
	{
		perror("xrealloc failed");
		exit(1);
	}
	return(ptr);
}

void *xmalloc(size_t num_bytes)
{
	void *ptr;

	ptr = malloc(num_bytes);

	if(!ptr)
	{
		perror("xmalloc failed");
		exit(1);
	}
	return(ptr);
}

void *xcalloc(size_t num_elems, size_t elem_size)
{
	void *ptr;

	ptr = calloc(num_elems, elem_size);

	if(!ptr)
	{
		perror("xcalloc failed");
		exit(1);
	}
	return(ptr);
}

void fatal_syntax_error(const char *fmt, ...)
{
	va_list args;
	va_start(args, fmt);
	printf("Syntax Error: ");
	vprintf(fmt, args);
	printf("\n");
	va_end(args);
	exit(1);
}

void fatal(const char *fmt, ...)
{
	char buf[256];
	va_list args;
	va_start(args, fmt);
	printf("FATAL: ");
	vprintf(fmt, args);
	printf("\n");
	va_end(args);
	exit(1);
}

void syntax_error(const char *fmt, ...)
{
	va_list args;
	va_start(args, fmt);
	printf("Syntax Error: ");
	vprintf(fmt, args);
	printf("\n");
	va_end(args);
}

/* 
 * Stretchy buffers 
 */

void *buf__grow(const void *buf, size_t new_len, size_t elem_size)
{
	assert(buf_cap(buf) <= (SIZE_MAX - 1) / 2);
	size_t new_cap = MAX(64, MAX(1 + 2 * buf_cap(buf), new_len));

	assert(new_len <= new_cap);
	assert(new_cap <= (SIZE_MAX - offsetof(BufferHeader, buf)) / elem_size);
	size_t new_size = offsetof(BufferHeader, buf) + new_cap * elem_size;
	BufferHeader *new_header;

	if(buf)
		new_header = realloc(buf__hdr(buf), new_size);
	else
	{
		new_header = xmalloc(new_size);
		new_header->len = 0;
	}

	new_header->cap = new_cap;

	return(new_header->buf);
}

void buf_test()
{
	int *buf = NULL;
	assert(buf_len(buf) == 0);
	int n = 1024;

	for(int i = 0; i < n; ++i)
		buf_push(buf, i);

	assert(buf_len(buf) == n);

	for(int i = 0; i < buf_len(buf); ++i)
		assert(buf[i] == i);
	
	buf_free(buf);
	assert(buf == NULL);
	assert(buf_len(buf) == 0);
}

void arena_grow(Arena *arena, size_t min_size)
{
	size_t size = ALIGN_UP(MAX(ARENA_BLOCK_SIZE, min_size), ARENA_ALIGNMENT);
	arena->ptr = xmalloc(size);
	arena->end = arena->ptr + size;
	buf_push(arena->blocks, arena->ptr);
}

void *arena_alloc(Arena *arena, size_t size)
{
	if(size > (size_t)(arena->end - arena->ptr))
	{
		arena_grow(arena, size);
		assert(size <= (size_t)(arena->end - arena->ptr));
	}
	void *ptr = arena->ptr;
	arena->ptr = ALIGN_UP_PTR(arena->ptr + size, ARENA_ALIGNMENT);
	assert(arena->ptr <= arena->end);
	assert(ptr == ALIGN_DOWN_PTR(ptr, ARENA_ALIGNMENT));

	return(ptr);
}

void arena_free(Arena *arena)
{
	for(char **it = arena->blocks; it != buf_end(arena->blocks); ++it)
		free(*it);
}

/*
 * Strign interning
 */

Arena str_arena;
InternString *interns;

const char *str_intern_range(const char *start, const char *end)
{
	size_t len = end - start;
	for(InternString *it = interns; it != buf_end(interns); ++it)
	{
		if(it->len == len && strncmp(it->str, start, len) == 0)
			return(it->str);
	}
	char *str = arena_alloc(&str_arena, len + 1);
	memcpy(str, start, len);
	str[len] = 0;

	buf_push(interns, (InternString){len, str});

	return(str);
}

const char *str_intern(const char *str)
{
	return(str_intern_range(str, str + strlen(str)));
}

void str_intern_test()
{
	char a[] = "hello";
	assert(strcmp(a, str_intern(a)) == 0);
	assert(str_intern(a) == str_intern(a));
	assert(str_intern(str_intern(a)) == str_intern(a));
	char b[] = "hello";
	assert(a != b);
	assert(str_intern(a) == str_intern(b));
	char c[] = "hello!";
	assert(str_intern(a) != str_intern(c));
	char d[] = "hell";
	assert(str_intern(a) != str_intern(d));
}

void common_test()
{
	buf_test();
	str_intern_test();
}
