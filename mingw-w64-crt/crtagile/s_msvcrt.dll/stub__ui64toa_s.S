/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__ui64toa_s.S"
	.text
#ifdef __x86_64__
	.globl _ui64toa_s
_ui64toa_s:
	jmp *__imp__ui64toa_s(%rip)
#elif __i386__
	.globl __ui64toa_s
__ui64toa_s:
	jmp *__imp___ui64toa_s
#else
#error "Unknown target"
#endif
