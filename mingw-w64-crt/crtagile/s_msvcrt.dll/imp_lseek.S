//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_lseek.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.lseek,"w"
	.globl __imp_lseek
	.align 8
__imp_lseek:
	.quad 0
	.section .rdata$imp.msvcrt.dll.lseek, "dr"
	.align 8
	.quad __imp__lseek, 1, __imp_lseek, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.lseek, "w"
	.align 4
	.globl __imp__lseek
__imp__lseek:
	.long 0
	.section .rdata$imp.msvcrt.dll.lseek, "dr"
	.align 4
	.long __imp___lseek, 1, __imp__lseek, 0
#else
#error "Unknown target"
#endif
