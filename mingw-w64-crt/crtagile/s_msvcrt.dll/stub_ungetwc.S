/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_ungetwc.S"
	.text
#ifdef __x86_64__
	.globl ungetwc
ungetwc:
	jmp *__imp_ungetwc(%rip)
#elif __i386__
	.globl _ungetwc
_ungetwc:
	jmp *__imp__ungetwc
#else
#error "Unknown target"
#endif
