/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__kbhit.S"
	.text
#ifdef __x86_64__
	.globl _kbhit
_kbhit:
	jmp *__imp__kbhit(%rip)
#elif __i386__
	.globl __kbhit
__kbhit:
	jmp *__imp___kbhit
#else
#error "Unknown target"
#endif
