/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_atof.S"
	.text
#ifdef __x86_64__
	.globl atof
atof:
	jmp *__imp_atof(%rip)
#elif __i386__
	.globl _atof
_atof:
	jmp *__imp__atof
#else
#error "Unknown target"
#endif
