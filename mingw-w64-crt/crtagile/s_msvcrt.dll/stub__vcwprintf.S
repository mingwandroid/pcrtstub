/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vcwprintf.S"
	.text
#ifdef __x86_64__
	.globl _vcwprintf
_vcwprintf:
	jmp *__imp__vcwprintf(%rip)
#elif __i386__
	.globl __vcwprintf
__vcwprintf:
	jmp *__imp___vcwprintf
#else
#error "Unknown target"
#endif
