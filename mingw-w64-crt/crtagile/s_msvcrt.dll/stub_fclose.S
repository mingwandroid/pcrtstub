/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub_fclose.S"
	.text
#ifdef __x86_64__
	.globl fclose
fclose:
	jmp *__imp_fclose(%rip)
#elif __i386__
	.globl _fclose
_fclose:
	jmp *__imp__fclose
#else
#error "Unknown target"
#endif
