/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__woutput_s.S"
	.text
#ifdef __x86_64__
	.globl _woutput_s
_woutput_s:
	jmp *__imp__woutput_s(%rip)
#elif __i386__
	.globl __woutput_s
__woutput_s:
	jmp *__imp___woutput_s
#else
#error "Unknown target"
#endif
