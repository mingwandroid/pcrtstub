/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vsnprintf_c.S"
	.text
#ifdef __x86_64__
	.globl _vsnprintf_c
_vsnprintf_c:
	jmp *__imp__vsnprintf_c(%rip)
#elif __i386__
	.globl __vsnprintf_c
__vsnprintf_c:
	jmp *__imp___vsnprintf_c
#else
#error "Unknown target"
#endif
