/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__onexit.S"
	.text
#ifdef __x86_64__
	.globl _onexit
_onexit:
	jmp *__imp__onexit(%rip)
#elif __i386__
	.globl __onexit
__onexit:
	jmp *__imp___onexit
#else
#error "Unknown target"
#endif
