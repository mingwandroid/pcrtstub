/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__local_unwind.S"
	.text
#ifdef __x86_64__
	.globl _local_unwind
_local_unwind:
	jmp *__imp__local_unwind(%rip)
#elif __i386__
	.globl __local_unwind
__local_unwind:
	jmp *__imp___local_unwind
#else
#error "Unknown target"
#endif
