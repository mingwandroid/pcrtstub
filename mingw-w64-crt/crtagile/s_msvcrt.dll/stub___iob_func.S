/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub___iob_func.S"
	.text
#ifdef __x86_64__
	.globl __iob_func
__iob_func:
	jmp *__imp___iob_func(%rip)
#elif __i386__
	.globl ___iob_func
___iob_func:
	jmp *__imp____iob_func
#else
#error "Unknown target"
#endif
