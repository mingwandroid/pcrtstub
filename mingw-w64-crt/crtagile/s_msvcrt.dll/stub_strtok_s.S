/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_strtok_s.S"
	.text
#ifdef __x86_64__
	.globl strtok_s
strtok_s:
	jmp *__imp_strtok_s(%rip)
#elif __i386__
	.globl _strtok_s
_strtok_s:
	jmp *__imp__strtok_s
#else
#error "Unknown target"
#endif
