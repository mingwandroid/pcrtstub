//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_mkdir.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.mkdir,"w"
	.globl __imp_mkdir
	.align 8
__imp_mkdir:
	.quad 0
	.section .rdata$imp.msvcrt.dll.mkdir, "dr"
	.align 8
	.quad __imp__mkdir, 1, __imp_mkdir, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.mkdir, "w"
	.align 4
	.globl __imp__mkdir
__imp__mkdir:
	.long 0
	.section .rdata$imp.msvcrt.dll.mkdir, "dr"
	.align 4
	.long __imp___mkdir, 1, __imp__mkdir, 0
#else
#error "Unknown target"
#endif
