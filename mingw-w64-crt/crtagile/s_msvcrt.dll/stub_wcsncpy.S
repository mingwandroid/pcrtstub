/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_wcsncpy.S"
	.text
#ifdef __x86_64__
	.globl wcsncpy
wcsncpy:
	jmp *__imp_wcsncpy(%rip)
#elif __i386__
	.globl _wcsncpy
_wcsncpy:
	jmp *__imp__wcsncpy
#else
#error "Unknown target"
#endif
