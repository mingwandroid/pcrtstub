//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_iswalpha.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.iswalpha,"w"
	.globl __imp_iswalpha
	.align 8
__imp_iswalpha:
	.quad 0
	.section .rdata, "dr"
__imp_iswalpha_name:
	.ascii "iswalpha"
	.section .rdata$imp.msvcrt.dll.iswalpha, "dr"
	.align 8
	.quad __imp_iswalpha_name, __imp_iswalpha
#elif __i386__
	.section .data$msvcrt.dll.iat.iswalpha, "w"
	.align 4
	.globl __imp__iswalpha
__imp__iswalpha:
	.long 0
	.section .rdata, "dr"
__imp__iswalpha_name:
	.ascii "iswalpha"
	.section .rdata$imp.msvcrt.dll.iswalpha, "dr"
	.align 4
	.long __imp_iswalpha__name, __imp__iswalpha
#else
#error "Unknown target"
#endif
