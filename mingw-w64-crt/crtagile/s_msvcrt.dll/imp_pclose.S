//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_pclose.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.pclose,"w"
	.globl __imp_pclose
	.align 8
__imp_pclose:
	.quad 0
	.section .rdata$imp.msvcrt.dll.pclose, "dr"
	.align 8
	.quad __imp__pclose, 1, __imp_pclose, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.pclose, "w"
	.align 4
	.globl __imp__pclose
__imp__pclose:
	.long 0
	.section .rdata$imp.msvcrt.dll.pclose, "dr"
	.align 4
	.long __imp___pclose, 1, __imp__pclose, 0
#else
#error "Unknown target"
#endif
