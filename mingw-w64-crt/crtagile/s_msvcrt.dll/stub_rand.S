/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_rand.S"
	.text
#ifdef __x86_64__
	.globl rand
rand:
	jmp *__imp_rand(%rip)
#elif __i386__
	.globl _rand
_rand:
	jmp *__imp__rand
#else
#error "Unknown target"
#endif
