/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__mbsstr.S"
	.text
#ifdef __x86_64__
	.globl _mbsstr
_mbsstr:
	jmp *__imp__mbsstr(%rip)
#elif __i386__
	.globl __mbsstr
__mbsstr:
	jmp *__imp___mbsstr
#else
#error "Unknown target"
#endif
