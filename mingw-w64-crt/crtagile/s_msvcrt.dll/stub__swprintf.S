/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__swprintf.S"
	.text
#ifdef __x86_64__
	.globl _swprintf
_swprintf:
	jmp *__imp__swprintf(%rip)
#elif __i386__
	.globl __swprintf
__swprintf:
	jmp *__imp___swprintf
#else
#error "Unknown target"
#endif
