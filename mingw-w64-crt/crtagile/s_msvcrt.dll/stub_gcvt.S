/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_gcvt.S"
	.text
#ifdef __x86_64__
	.globl gcvt
gcvt:
	jmp *__imp_gcvt(%rip)
#elif __i386__
	.globl _gcvt
_gcvt:
	jmp *__imp__gcvt
#else
#error "Unknown target"
#endif
