/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wtmpnam_s.S"
	.text
#ifdef __x86_64__
	.globl _wtmpnam_s
_wtmpnam_s:
	jmp *__imp__wtmpnam_s(%rip)
#elif __i386__
	.globl __wtmpnam_s
__wtmpnam_s:
	jmp *__imp___wtmpnam_s
#else
#error "Unknown target"
#endif
