/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_swprintf.S"
	.text
#ifdef __x86_64__
	.globl swprintf
swprintf:
	jmp *__imp_swprintf(%rip)
#elif __i386__
	.globl _swprintf
_swprintf:
	jmp *__imp__swprintf
#else
#error "Unknown target"
#endif
