/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__mbsicmp.S"
	.text
#ifdef __x86_64__
	.globl _mbsicmp
_mbsicmp:
	jmp *__imp__mbsicmp(%rip)
#elif __i386__
	.globl __mbsicmp
__mbsicmp:
	jmp *__imp___mbsicmp
#else
#error "Unknown target"
#endif
