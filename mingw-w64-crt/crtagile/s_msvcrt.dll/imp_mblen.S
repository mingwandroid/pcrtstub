//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_mblen.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.mblen,"w"
	.globl __imp_mblen
	.align 8
__imp_mblen:
	.quad 0
	.section .rdata, "dr"
__imp_mblen_name:
	.ascii "mblen"
	.section .rdata$imp.msvcrt.dll.mblen, "dr"
	.align 8
	.quad __imp_mblen_name, __imp_mblen
#elif __i386__
	.section .data$msvcrt.dll.iat.mblen, "w"
	.align 4
	.globl __imp__mblen
__imp__mblen:
	.long 0
	.section .rdata, "dr"
__imp__mblen_name:
	.ascii "mblen"
	.section .rdata$imp.msvcrt.dll.mblen, "dr"
	.align 4
	.long __imp_mblen__name, __imp__mblen
#else
#error "Unknown target"
#endif
