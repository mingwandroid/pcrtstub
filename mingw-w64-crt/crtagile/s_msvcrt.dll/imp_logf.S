//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_logf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.logf,"w"
	.globl __imp_logf
	.align 8
__imp_logf:
	.quad 0
	.section .rdata, "dr"
__imp_logf_name:
	.ascii "logf"
	.section .rdata$imp.msvcrt.dll.logf, "dr"
	.align 8
	.quad __imp_logf_name, __imp_logf
#elif __i386__
	.section .data$msvcrt.dll.iat.logf, "w"
	.align 4
	.globl __imp__logf
__imp__logf:
	.long 0
	.section .rdata, "dr"
__imp__logf_name:
	.ascii "logf"
	.section .rdata$imp.msvcrt.dll.logf, "dr"
	.align 4
	.long __imp_logf__name, __imp__logf
#else
#error "Unknown target"
#endif
