/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__isctype_l.S"
	.text
#ifdef __x86_64__
	.globl _isctype_l
_isctype_l:
	jmp *__imp__isctype_l(%rip)
#elif __i386__
	.globl __isctype_l
__isctype_l:
	jmp *__imp___isctype_l
#else
#error "Unknown target"
#endif
