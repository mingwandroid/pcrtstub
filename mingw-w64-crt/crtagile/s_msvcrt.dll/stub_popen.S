/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_popen.S"
	.text
#ifdef __x86_64__
	.globl popen
popen:
	jmp *__imp_popen(%rip)
#elif __i386__
	.globl _popen
_popen:
	jmp *__imp__popen
#else
#error "Unknown target"
#endif
