/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__pipe.S"
	.text
#ifdef __x86_64__
	.globl _pipe
_pipe:
	jmp *__imp__pipe(%rip)
#elif __i386__
	.globl __pipe
__pipe:
	jmp *__imp___pipe
#else
#error "Unknown target"
#endif
