/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__mbstrlen.S"
	.text
#ifdef __x86_64__
	.globl _mbstrlen
_mbstrlen:
	jmp *__imp__mbstrlen(%rip)
#elif __i386__
	.globl __mbstrlen
__mbstrlen:
	jmp *__imp___mbstrlen
#else
#error "Unknown target"
#endif
