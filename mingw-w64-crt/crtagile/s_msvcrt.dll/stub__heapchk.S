/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__heapchk.S"
	.text
#ifdef __x86_64__
	.globl _heapchk
_heapchk:
	jmp *__imp__heapchk(%rip)
#elif __i386__
	.globl __heapchk
__heapchk:
	jmp *__imp___heapchk
#else
#error "Unknown target"
#endif
