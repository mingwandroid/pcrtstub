/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__lrotl.S"
	.text
#ifdef __x86_64__
	.globl _lrotl
_lrotl:
	jmp *__imp__lrotl(%rip)
#elif __i386__
	.globl __lrotl
__lrotl:
	jmp *__imp___lrotl
#else
#error "Unknown target"
#endif
