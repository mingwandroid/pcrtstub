/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wspawnlp.S"
	.text
#ifdef __x86_64__
	.globl _wspawnlp
_wspawnlp:
	jmp *__imp__wspawnlp(%rip)
#elif __i386__
	.globl __wspawnlp
__wspawnlp:
	jmp *__imp___wspawnlp
#else
#error "Unknown target"
#endif
