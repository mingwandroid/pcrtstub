/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wcslwr_s_l.S"
	.text
#ifdef __x86_64__
	.globl _wcslwr_s_l
_wcslwr_s_l:
	jmp *__imp__wcslwr_s_l(%rip)
#elif __i386__
	.globl __wcslwr_s_l
__wcslwr_s_l:
	jmp *__imp___wcslwr_s_l
#else
#error "Unknown target"
#endif
