/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__strtoul_l.S"
	.text
#ifdef __x86_64__
	.globl _strtoul_l
_strtoul_l:
	jmp *__imp__strtoul_l(%rip)
#elif __i386__
	.globl __strtoul_l
__strtoul_l:
	jmp *__imp___strtoul_l
#else
#error "Unknown target"
#endif
