.global _start

_start:
	// syscall: ssize_t write(int fildes, const void *buf, size_t nbyte)
	// syscall number: 64
	mov x0, #1
	ldr x1, =hello
	mov x2, #14
	mov x8, #64
	svc 0

  // syscall: void _exit(int status);
	// syscall number: 93
	mov x0, #0
	mov x8, #93
	svc 0

.data
	hello: .asciz "Hello, World!\n"
