/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__fwprintf_p.S"
	.text
#ifdef __x86_64__
	.globl _fwprintf_p
_fwprintf_p:
	jmp *__imp__fwprintf_p(%rip)
#elif __i386__
	.globl __fwprintf_p
__fwprintf_p:
	jmp *__imp___fwprintf_p
#else
#error "Unknown target"
#endif
