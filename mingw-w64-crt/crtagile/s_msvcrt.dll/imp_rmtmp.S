//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_rmtmp.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.rmtmp,"w"
	.globl __imp_rmtmp
	.align 8
__imp_rmtmp:
	.quad 0
	.section .rdata$imp.msvcrt.dll.rmtmp, "dr"
	.align 8
	.quad __imp__rmtmp, 1, __imp_rmtmp, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.rmtmp, "w"
	.align 4
	.globl __imp__rmtmp
__imp__rmtmp:
	.long 0
	.section .rdata$imp.msvcrt.dll.rmtmp, "dr"
	.align 4
	.long __imp___rmtmp, 1, __imp__rmtmp, 0
#else
#error "Unknown target"
#endif
