/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_tzname.S"
	.text
#ifdef __x86_64__
	.globl tzname
tzname:
	jmp *__imp_tzname(%rip)
#elif __i386__
	.globl _tzname
_tzname:
	jmp *__imp__tzname
#else
#error "Unknown target"
#endif
