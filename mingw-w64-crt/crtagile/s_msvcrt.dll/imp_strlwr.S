//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_strlwr.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.strlwr,"w"
	.globl __imp_strlwr
	.align 8
__imp_strlwr:
	.quad 0
	.section .rdata$imp.msvcrt.dll.strlwr, "dr"
	.align 8
	.quad __imp__strlwr, 1, __imp_strlwr, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.strlwr, "w"
	.align 4
	.globl __imp__strlwr
__imp__strlwr:
	.long 0
	.section .rdata$imp.msvcrt.dll.strlwr, "dr"
	.align 4
	.long __imp___strlwr, 1, __imp__strlwr, 0
#else
#error "Unknown target"
#endif
