/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_fputwc.S"
	.text
#ifdef __x86_64__
	.globl fputwc
fputwc:
	jmp *__imp_fputwc(%rip)
#elif __i386__
	.globl _fputwc
_fputwc:
	jmp *__imp__fputwc
#else
#error "Unknown target"
#endif
