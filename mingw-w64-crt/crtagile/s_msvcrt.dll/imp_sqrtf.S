//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_sqrtf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.sqrtf,"w"
	.globl __imp_sqrtf
	.align 8
__imp_sqrtf:
	.quad 0
	.section .rdata, "dr"
__imp_sqrtf_name:
	.ascii "sqrtf"
	.section .rdata$imp.msvcrt.dll.sqrtf, "dr"
	.align 8
	.quad __imp_sqrtf_name, __imp_sqrtf
#elif __i386__
	.section .data$msvcrt.dll.iat.sqrtf, "w"
	.align 4
	.globl __imp__sqrtf
__imp__sqrtf:
	.long 0
	.section .rdata, "dr"
__imp__sqrtf_name:
	.ascii "sqrtf"
	.section .rdata$imp.msvcrt.dll.sqrtf, "dr"
	.align 4
	.long __imp_sqrtf__name, __imp__sqrtf
#else
#error "Unknown target"
#endif
