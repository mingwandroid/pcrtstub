/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wcstol_l.S"
	.text
#ifdef __x86_64__
	.globl _wcstol_l
_wcstol_l:
	jmp *__imp__wcstol_l(%rip)
#elif __i386__
	.globl __wcstol_l
__wcstol_l:
	jmp *__imp___wcstol_l
#else
#error "Unknown target"
#endif
