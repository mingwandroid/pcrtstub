/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__mbsdec.S"
	.text
#ifdef __x86_64__
	.globl _mbsdec
_mbsdec:
	jmp *__imp__mbsdec(%rip)
#elif __i386__
	.globl __mbsdec
__mbsdec:
	jmp *__imp___mbsdec
#else
#error "Unknown target"
#endif
