/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vscwprintf_p_l.S"
	.text
#ifdef __x86_64__
	.globl _vscwprintf_p_l
_vscwprintf_p_l:
	jmp *__imp__vscwprintf_p_l(%rip)
#elif __i386__
	.globl __vscwprintf_p_l
__vscwprintf_p_l:
	jmp *__imp___vscwprintf_p_l
#else
#error "Unknown target"
#endif
