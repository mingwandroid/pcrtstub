/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vscprintf_p_l.S"
	.text
#ifdef __x86_64__
	.globl _vscprintf_p_l
_vscprintf_p_l:
	jmp *__imp__vscprintf_p_l(%rip)
#elif __i386__
	.globl __vscprintf_p_l
__vscprintf_p_l:
	jmp *__imp___vscprintf_p_l
#else
#error "Unknown target"
#endif
