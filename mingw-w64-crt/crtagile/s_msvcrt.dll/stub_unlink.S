/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_unlink.S"
	.text
#ifdef __x86_64__
	.globl unlink
unlink:
	jmp *__imp_unlink(%rip)
#elif __i386__
	.globl _unlink
_unlink:
	jmp *__imp__unlink
#else
#error "Unknown target"
#endif
