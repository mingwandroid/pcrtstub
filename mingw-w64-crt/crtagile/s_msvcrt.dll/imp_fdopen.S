//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_fdopen.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.fdopen,"w"
	.globl __imp_fdopen
	.align 8
__imp_fdopen:
	.quad 0
	.section .rdata$imp.msvcrt.dll.fdopen, "dr"
	.align 8
	.quad __imp__fdopen, 1, __imp_fdopen, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.fdopen, "w"
	.align 4
	.globl __imp__fdopen
__imp__fdopen:
	.long 0
	.section .rdata$imp.msvcrt.dll.fdopen, "dr"
	.align 4
	.long __imp___fdopen, 1, __imp__fdopen, 0
#else
#error "Unknown target"
#endif
