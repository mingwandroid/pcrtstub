/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__chdrive.S"
	.text
#ifdef __x86_64__
	.globl _chdrive
_chdrive:
	jmp *__imp__chdrive(%rip)
#elif __i386__
	.globl __chdrive
__chdrive:
	jmp *__imp___chdrive
#else
#error "Unknown target"
#endif
