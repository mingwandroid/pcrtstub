//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_log10.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.log10,"w"
	.globl __imp_log10
	.align 8
__imp_log10:
	.quad 0
	.section .rdata, "dr"
__imp_log10_name:
	.ascii "log10"
	.section .rdata$imp.msvcrt.dll.log10, "dr"
	.align 8
	.quad __imp_log10_name, __imp_log10
#elif __i386__
	.section .data$msvcrt.dll.iat.log10, "w"
	.align 4
	.globl __imp__log10
__imp__log10:
	.long 0
	.section .rdata, "dr"
__imp__log10_name:
	.ascii "log10"
	.section .rdata$imp.msvcrt.dll.log10, "dr"
	.align 4
	.long __imp_log10__name, __imp__log10
#else
#error "Unknown target"
#endif
