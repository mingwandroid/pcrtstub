/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__setmaxstdio.S"
	.text
#ifdef __x86_64__
	.globl _setmaxstdio
_setmaxstdio:
	jmp *__imp__setmaxstdio(%rip)
#elif __i386__
	.globl __setmaxstdio
__setmaxstdio:
	jmp *__imp___setmaxstdio
#else
#error "Unknown target"
#endif
