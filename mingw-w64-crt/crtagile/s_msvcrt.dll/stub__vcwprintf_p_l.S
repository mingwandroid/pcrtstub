/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vcwprintf_p_l.S"
	.text
#ifdef __x86_64__
	.globl _vcwprintf_p_l
_vcwprintf_p_l:
	jmp *__imp__vcwprintf_p_l(%rip)
#elif __i386__
	.globl __vcwprintf_p_l
__vcwprintf_p_l:
	jmp *__imp___vcwprintf_p_l
#else
#error "Unknown target"
#endif
