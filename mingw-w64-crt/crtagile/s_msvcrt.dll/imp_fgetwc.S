//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_fgetwc.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.fgetwc,"w"
	.globl __imp_fgetwc
	.align 8
__imp_fgetwc:
	.quad 0
	.section .rdata, "dr"
__imp_fgetwc_name:
	.ascii "fgetwc"
	.section .rdata$imp.msvcrt.dll.fgetwc, "dr"
	.align 8
	.quad __imp_fgetwc_name, __imp_fgetwc
#elif __i386__
	.section .data$msvcrt.dll.iat.fgetwc, "w"
	.align 4
	.globl __imp__fgetwc
__imp__fgetwc:
	.long 0
	.section .rdata, "dr"
__imp__fgetwc_name:
	.ascii "fgetwc"
	.section .rdata$imp.msvcrt.dll.fgetwc, "dr"
	.align 4
	.long __imp_fgetwc__name, __imp__fgetwc
#else
#error "Unknown target"
#endif
