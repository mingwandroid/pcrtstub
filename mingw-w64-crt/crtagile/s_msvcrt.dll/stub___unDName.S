/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub___unDName.S"
	.text
#ifdef __x86_64__
	.globl __unDName
__unDName:
	jmp *__imp___unDName(%rip)
#elif __i386__
	.globl ___unDName
___unDName:
	jmp *__imp____unDName
#else
#error "Unknown target"
#endif
