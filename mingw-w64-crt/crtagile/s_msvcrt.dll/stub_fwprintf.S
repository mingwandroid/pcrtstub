/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_fwprintf.S"
	.text
#ifdef __x86_64__
	.globl fwprintf
fwprintf:
	jmp *__imp_fwprintf(%rip)
#elif __i386__
	.globl _fwprintf
_fwprintf:
	jmp *__imp__fwprintf
#else
#error "Unknown target"
#endif
