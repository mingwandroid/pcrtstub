/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wfindnext64.S"
	.text
#ifdef __x86_64__
	.globl _wfindnext64
_wfindnext64:
	jmp *__imp__wfindnext64(%rip)
#elif __i386__
	.globl __wfindnext64
__wfindnext64:
	jmp *__imp___wfindnext64
#else
#error "Unknown target"
#endif
