/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__strtoi64_l.S"
	.text
#ifdef __x86_64__
	.globl _strtoi64_l
_strtoi64_l:
	jmp *__imp__strtoi64_l(%rip)
#elif __i386__
	.globl __strtoi64_l
__strtoi64_l:
	jmp *__imp___strtoi64_l
#else
#error "Unknown target"
#endif
