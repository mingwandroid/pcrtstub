/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_getenv_s.S"
	.text
#ifdef __x86_64__
	.globl getenv_s
getenv_s:
	jmp *__imp_getenv_s(%rip)
#elif __i386__
	.globl _getenv_s
_getenv_s:
	jmp *__imp__getenv_s
#else
#error "Unknown target"
#endif
