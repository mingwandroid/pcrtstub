/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__getche.S"
	.text
#ifdef __x86_64__
	.globl _getche
_getche:
	jmp *__imp__getche(%rip)
#elif __i386__
	.globl __getche
__getche:
	jmp *__imp___getche
#else
#error "Unknown target"
#endif
