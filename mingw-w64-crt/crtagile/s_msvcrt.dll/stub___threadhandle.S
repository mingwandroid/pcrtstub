/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub___threadhandle.S"
	.text
#ifdef __x86_64__
	.globl __threadhandle
__threadhandle:
	jmp *__imp___threadhandle(%rip)
#elif __i386__
	.globl ___threadhandle
___threadhandle:
	jmp *__imp____threadhandle
#else
#error "Unknown target"
#endif
