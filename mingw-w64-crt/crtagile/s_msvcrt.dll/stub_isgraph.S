/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_isgraph.S"
	.text
#ifdef __x86_64__
	.globl isgraph
isgraph:
	jmp *__imp_isgraph(%rip)
#elif __i386__
	.globl _isgraph
_isgraph:
	jmp *__imp__isgraph
#else
#error "Unknown target"
#endif
