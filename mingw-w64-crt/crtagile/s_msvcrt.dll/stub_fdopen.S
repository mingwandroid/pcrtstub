/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_fdopen.S"
	.text
#ifdef __x86_64__
	.globl fdopen
fdopen:
	jmp *__imp_fdopen(%rip)
#elif __i386__
	.globl _fdopen
_fdopen:
	jmp *__imp__fdopen
#else
#error "Unknown target"
#endif
