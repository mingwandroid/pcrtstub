/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub___crtCompareStringA.S"
	.text
#ifdef __x86_64__
	.globl __crtCompareStringA
__crtCompareStringA:
	jmp *__imp___crtCompareStringA(%rip)
#elif __i386__
	.globl ___crtCompareStringA
___crtCompareStringA:
	jmp *__imp____crtCompareStringA
#else
#error "Unknown target"
#endif
