/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__snprintf_s_l.S"
	.text
#ifdef __x86_64__
	.globl _snprintf_s_l
_snprintf_s_l:
	jmp *__imp__snprintf_s_l(%rip)
#elif __i386__
	.globl __snprintf_s_l
__snprintf_s_l:
	jmp *__imp___snprintf_s_l
#else
#error "Unknown target"
#endif
