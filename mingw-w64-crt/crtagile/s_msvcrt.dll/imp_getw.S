//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_getw.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.getw,"w"
	.globl __imp_getw
	.align 8
__imp_getw:
	.quad 0
	.section .rdata$imp.msvcrt.dll.getw, "dr"
	.align 8
	.quad __imp__getw, 1, __imp_getw, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.getw, "w"
	.align 4
	.globl __imp__getw
__imp__getw:
	.long 0
	.section .rdata$imp.msvcrt.dll.getw, "dr"
	.align 4
	.long __imp___getw, 1, __imp__getw, 0
#else
#error "Unknown target"
#endif
