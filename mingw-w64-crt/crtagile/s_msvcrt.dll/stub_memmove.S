/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_memmove.S"
	.text
#ifdef __x86_64__
	.globl memmove
memmove:
	jmp *__imp_memmove(%rip)
#elif __i386__
	.globl _memmove
_memmove:
	jmp *__imp__memmove
#else
#error "Unknown target"
#endif
