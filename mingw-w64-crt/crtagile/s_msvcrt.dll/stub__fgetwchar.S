/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__fgetwchar.S"
	.text
#ifdef __x86_64__
	.globl _fgetwchar
_fgetwchar:
	jmp *__imp__fgetwchar(%rip)
#elif __i386__
	.globl __fgetwchar
__fgetwchar:
	jmp *__imp___fgetwchar
#else
#error "Unknown target"
#endif
