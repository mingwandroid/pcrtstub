/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wspawnle.S"
	.text
#ifdef __x86_64__
	.globl _wspawnle
_wspawnle:
	jmp *__imp__wspawnle(%rip)
#elif __i386__
	.globl __wspawnle
__wspawnle:
	jmp *__imp___wspawnle
#else
#error "Unknown target"
#endif
