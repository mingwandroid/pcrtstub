/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vscprintf.S"
	.text
#ifdef __x86_64__
	.globl _vscprintf
_vscprintf:
	jmp *__imp__vscprintf(%rip)
#elif __i386__
	.globl __vscprintf
__vscprintf:
	jmp *__imp___vscprintf
#else
#error "Unknown target"
#endif
