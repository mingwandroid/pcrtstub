/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_fgetpos.S"
	.text
#ifdef __x86_64__
	.globl fgetpos
fgetpos:
	jmp *__imp_fgetpos(%rip)
#elif __i386__
	.globl _fgetpos
_fgetpos:
	jmp *__imp__fgetpos
#else
#error "Unknown target"
#endif
