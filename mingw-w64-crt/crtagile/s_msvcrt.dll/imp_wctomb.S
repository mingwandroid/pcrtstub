//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wctomb.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wctomb,"w"
	.globl __imp_wctomb
	.align 8
__imp_wctomb:
	.quad 0
	.section .rdata, "dr"
__imp_wctomb_name:
	.ascii "wctomb"
	.section .rdata$imp.msvcrt.dll.wctomb, "dr"
	.align 8
	.quad __imp_wctomb_name, __imp_wctomb
#elif __i386__
	.section .data$msvcrt.dll.iat.wctomb, "w"
	.align 4
	.globl __imp__wctomb
__imp__wctomb:
	.long 0
	.section .rdata, "dr"
__imp__wctomb_name:
	.ascii "wctomb"
	.section .rdata$imp.msvcrt.dll.wctomb, "dr"
	.align 4
	.long __imp_wctomb__name, __imp__wctomb
#else
#error "Unknown target"
#endif
