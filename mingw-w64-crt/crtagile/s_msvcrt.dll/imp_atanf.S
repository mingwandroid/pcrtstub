//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_atanf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.atanf,"w"
	.globl __imp_atanf
	.align 8
__imp_atanf:
	.quad 0
	.section .rdata, "dr"
__imp_atanf_name:
	.ascii "atanf"
	.section .rdata$imp.msvcrt.dll.atanf, "dr"
	.align 8
	.quad __imp_atanf_name, __imp_atanf
#elif __i386__
	.section .data$msvcrt.dll.iat.atanf, "w"
	.align 4
	.globl __imp__atanf
__imp__atanf:
	.long 0
	.section .rdata, "dr"
__imp__atanf_name:
	.ascii "atanf"
	.section .rdata$imp.msvcrt.dll.atanf, "dr"
	.align 4
	.long __imp_atanf__name, __imp__atanf
#else
#error "Unknown target"
#endif
