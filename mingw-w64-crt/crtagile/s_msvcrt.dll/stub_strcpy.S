/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_strcpy.S"
	.text
#ifdef __x86_64__
	.globl strcpy
strcpy:
	jmp *__imp_strcpy(%rip)
#elif __i386__
	.globl _strcpy
_strcpy:
	jmp *__imp__strcpy
#else
#error "Unknown target"
#endif
