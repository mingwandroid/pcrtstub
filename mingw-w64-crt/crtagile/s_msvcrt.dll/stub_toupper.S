/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_toupper.S"
	.text
#ifdef __x86_64__
	.globl toupper
toupper:
	jmp *__imp_toupper(%rip)
#elif __i386__
	.globl _toupper
_toupper:
	jmp *__imp__toupper
#else
#error "Unknown target"
#endif
