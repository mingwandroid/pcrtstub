//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_toascii.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.toascii,"w"
	.globl __imp_toascii
	.align 8
__imp_toascii:
	.quad 0
	.section .rdata$imp.msvcrt.dll.toascii, "dr"
	.align 8
	.quad __imp___toascii, 1, __imp_toascii, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.toascii, "w"
	.align 4
	.globl __imp__toascii
__imp__toascii:
	.long 0
	.section .rdata$imp.msvcrt.dll.toascii, "dr"
	.align 4
	.long __imp____toascii, 1, __imp__toascii, 0
#else
#error "Unknown target"
#endif
