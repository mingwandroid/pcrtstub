/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__strnset_s.S"
	.text
#ifdef __x86_64__
	.globl _strnset_s
_strnset_s:
	jmp *__imp__strnset_s(%rip)
#elif __i386__
	.globl __strnset_s
__strnset_s:
	jmp *__imp___strnset_s
#else
#error "Unknown target"
#endif
