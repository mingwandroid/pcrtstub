/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__swprintf_c.S"
	.text
#ifdef __x86_64__
	.globl _swprintf_c
_swprintf_c:
	jmp *__imp__swprintf_c(%rip)
#elif __i386__
	.globl __swprintf_c
__swprintf_c:
	jmp *__imp___swprintf_c
#else
#error "Unknown target"
#endif
