/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__cwprintf_p_l.S"
	.text
#ifdef __x86_64__
	.globl _cwprintf_p_l
_cwprintf_p_l:
	jmp *__imp__cwprintf_p_l(%rip)
#elif __i386__
	.globl __cwprintf_p_l
__cwprintf_p_l:
	jmp *__imp___cwprintf_p_l
#else
#error "Unknown target"
#endif
