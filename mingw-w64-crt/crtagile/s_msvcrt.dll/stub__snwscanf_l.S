/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__snwscanf_l.S"
	.text
#ifdef __x86_64__
	.globl _snwscanf_l
_snwscanf_l:
	jmp *__imp__snwscanf_l(%rip)
#elif __i386__
	.globl __snwscanf_l
__snwscanf_l:
	jmp *__imp___snwscanf_l
#else
#error "Unknown target"
#endif
