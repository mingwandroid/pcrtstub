/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__vfprintf_s_l.S"
	.text
#ifdef __x86_64__
	.globl _vfprintf_s_l
_vfprintf_s_l:
	jmp *__imp__vfprintf_s_l(%rip)
#elif __i386__
	.globl __vfprintf_s_l
__vfprintf_s_l:
	jmp *__imp___vfprintf_s_l
#else
#error "Unknown target"
#endif
