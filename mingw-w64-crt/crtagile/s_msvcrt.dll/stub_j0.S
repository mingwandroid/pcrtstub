/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_j0.S"
	.text
#ifdef __x86_64__
	.globl j0
j0:
	jmp *__imp_j0(%rip)
#elif __i386__
	.globl _j0
_j0:
	jmp *__imp__j0
#else
#error "Unknown target"
#endif
