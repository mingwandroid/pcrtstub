//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_putenv.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.putenv,"w"
	.globl __imp_putenv
	.align 8
__imp_putenv:
	.quad 0
	.section .rdata$imp.msvcrt.dll.putenv, "dr"
	.align 8
	.quad __imp__putenv, 1, __imp_putenv, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.putenv, "w"
	.align 4
	.globl __imp__putenv
__imp__putenv:
	.long 0
	.section .rdata$imp.msvcrt.dll.putenv, "dr"
	.align 4
	.long __imp___putenv, 1, __imp__putenv, 0
#else
#error "Unknown target"
#endif
