/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__ismbcalnum_l.S"
	.text
#ifdef __x86_64__
	.globl _ismbcalnum_l
_ismbcalnum_l:
	jmp *__imp__ismbcalnum_l(%rip)
#elif __i386__
	.globl __ismbcalnum_l
__ismbcalnum_l:
	jmp *__imp___ismbcalnum_l
#else
#error "Unknown target"
#endif
