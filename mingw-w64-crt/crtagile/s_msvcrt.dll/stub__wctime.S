/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wctime.S"
	.text
#ifdef __x86_64__
	.globl _wctime
_wctime:
	jmp *__imp__wctime(%rip)
#elif __i386__
	.globl __wctime
__wctime:
	jmp *__imp___wctime
#else
#error "Unknown target"
#endif
