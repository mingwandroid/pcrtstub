/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_ftell.S"
	.text
#ifdef __x86_64__
	.globl ftell
ftell:
	jmp *__imp_ftell(%rip)
#elif __i386__
	.globl _ftell
_ftell:
	jmp *__imp__ftell
#else
#error "Unknown target"
#endif
