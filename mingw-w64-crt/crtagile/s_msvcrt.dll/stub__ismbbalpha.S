/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__ismbbalpha.S"
	.text
#ifdef __x86_64__
	.globl _ismbbalpha
_ismbbalpha:
	jmp *__imp__ismbbalpha(%rip)
#elif __i386__
	.globl __ismbbalpha
__ismbbalpha:
	jmp *__imp___ismbbalpha
#else
#error "Unknown target"
#endif
