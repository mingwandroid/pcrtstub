/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_towupper.S"
	.text
#ifdef __x86_64__
	.globl towupper
towupper:
	jmp *__imp_towupper(%rip)
#elif __i386__
	.globl _towupper
_towupper:
	jmp *__imp__towupper
#else
#error "Unknown target"
#endif
