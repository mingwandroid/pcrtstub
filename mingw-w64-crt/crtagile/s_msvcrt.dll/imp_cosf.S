//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_cosf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.cosf,"w"
	.globl __imp_cosf
	.align 8
__imp_cosf:
	.quad 0
	.section .rdata, "dr"
__imp_cosf_name:
	.ascii "cosf"
	.section .rdata$imp.msvcrt.dll.cosf, "dr"
	.align 8
	.quad __imp_cosf_name, __imp_cosf
#elif __i386__
	.section .data$msvcrt.dll.iat.cosf, "w"
	.align 4
	.globl __imp__cosf
__imp__cosf:
	.long 0
	.section .rdata, "dr"
__imp__cosf_name:
	.ascii "cosf"
	.section .rdata$imp.msvcrt.dll.cosf, "dr"
	.align 4
	.long __imp_cosf__name, __imp__cosf
#else
#error "Unknown target"
#endif
