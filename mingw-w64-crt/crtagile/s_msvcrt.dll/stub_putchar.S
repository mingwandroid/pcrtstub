/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_putchar.S"
	.text
#ifdef __x86_64__
	.globl putchar
putchar:
	jmp *__imp_putchar(%rip)
#elif __i386__
	.globl _putchar
_putchar:
	jmp *__imp__putchar
#else
#error "Unknown target"
#endif
