/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__wexeclpe.S"
	.text
#ifdef __x86_64__
	.globl _wexeclpe
_wexeclpe:
	jmp *__imp__wexeclpe(%rip)
#elif __i386__
	.globl __wexeclpe
__wexeclpe:
	jmp *__imp___wexeclpe
#else
#error "Unknown target"
#endif
