/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__atol_l.S"
	.text
#ifdef __x86_64__
	.globl _atol_l
_atol_l:
	jmp *__imp__atol_l(%rip)
#elif __i386__
	.globl __atol_l
__atol_l:
	jmp *__imp___atol_l
#else
#error "Unknown target"
#endif
