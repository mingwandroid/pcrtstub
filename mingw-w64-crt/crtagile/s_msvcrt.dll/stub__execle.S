/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__execle.S"
	.text
#ifdef __x86_64__
	.globl _execle
_execle:
	jmp *__imp__execle(%rip)
#elif __i386__
	.globl __execle
__execle:
	jmp *__imp___execle
#else
#error "Unknown target"
#endif
