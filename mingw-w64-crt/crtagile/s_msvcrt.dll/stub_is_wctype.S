/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_is_wctype.S"
	.text
#ifdef __x86_64__
	.globl is_wctype
is_wctype:
	jmp *__imp_is_wctype(%rip)
#elif __i386__
	.globl _is_wctype
_is_wctype:
	jmp *__imp__is_wctype
#else
#error "Unknown target"
#endif
