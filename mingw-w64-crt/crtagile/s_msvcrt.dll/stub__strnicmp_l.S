/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__strnicmp_l.S"
	.text
#ifdef __x86_64__
	.globl _strnicmp_l
_strnicmp_l:
	jmp *__imp__strnicmp_l(%rip)
#elif __i386__
	.globl __strnicmp_l
__strnicmp_l:
	jmp *__imp___strnicmp_l
#else
#error "Unknown target"
#endif
