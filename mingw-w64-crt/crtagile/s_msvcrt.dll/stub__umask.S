/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__umask.S"
	.text
#ifdef __x86_64__
	.globl _umask
_umask:
	jmp *__imp__umask(%rip)
#elif __i386__
	.globl __umask
__umask:
	jmp *__imp___umask
#else
#error "Unknown target"
#endif
