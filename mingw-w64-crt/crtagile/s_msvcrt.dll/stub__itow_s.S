/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__itow_s.S"
	.text
#ifdef __x86_64__
	.globl _itow_s
_itow_s:
	jmp *__imp__itow_s(%rip)
#elif __i386__
	.globl __itow_s
__itow_s:
	jmp *__imp___itow_s
#else
#error "Unknown target"
#endif
