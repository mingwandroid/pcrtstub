//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_strnset.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.strnset,"w"
	.globl __imp_strnset
	.align 8
__imp_strnset:
	.quad 0
	.section .rdata$imp.msvcrt.dll.strnset, "dr"
	.align 8
	.quad __imp__strnset, 1, __imp_strnset, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.strnset, "w"
	.align 4
	.globl __imp__strnset
__imp__strnset:
	.long 0
	.section .rdata$imp.msvcrt.dll.strnset, "dr"
	.align 4
	.long __imp___strnset, 1, __imp__strnset, 0
#else
#error "Unknown target"
#endif
