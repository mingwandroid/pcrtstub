/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__execvp.S"
	.text
#ifdef __x86_64__
	.globl _execvp
_execvp:
	jmp *__imp__execvp(%rip)
#elif __i386__
	.globl __execvp
__execvp:
	jmp *__imp___execvp
#else
#error "Unknown target"
#endif
