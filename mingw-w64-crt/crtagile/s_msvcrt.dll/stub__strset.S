/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__strset.S"
	.text
#ifdef __x86_64__
	.globl _strset
_strset:
	jmp *__imp__strset(%rip)
#elif __i386__
	.globl __strset
__strset:
	jmp *__imp___strset
#else
#error "Unknown target"
#endif
