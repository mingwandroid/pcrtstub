//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_read.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.read,"w"
	.globl __imp_read
	.align 8
__imp_read:
	.quad 0
	.section .rdata$imp.msvcrt.dll.read, "dr"
	.align 8
	.quad __imp__read, 1, __imp_read, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.read, "w"
	.align 4
	.globl __imp__read
__imp__read:
	.long 0
	.section .rdata$imp.msvcrt.dll.read, "dr"
	.align 4
	.long __imp___read, 1, __imp__read, 0
#else
#error "Unknown target"
#endif
