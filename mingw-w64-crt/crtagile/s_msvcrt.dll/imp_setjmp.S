//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_setjmp.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.setjmp,"w"
	.globl __imp_setjmp
	.align 8
__imp_setjmp:
	.quad 0
	.section .rdata, "dr"
__imp_setjmp_name:
	.ascii "setjmp"
	.section .rdata$imp.msvcrt.dll.setjmp, "dr"
	.align 8
	.quad __imp_setjmp_name, __imp_setjmp
#elif __i386__
	.section .data$msvcrt.dll.iat.setjmp, "w"
	.align 4
	.globl __imp__setjmp
__imp__setjmp:
	.long 0
	.section .rdata, "dr"
__imp__setjmp_name:
	.ascii "setjmp"
	.section .rdata$imp.msvcrt.dll.setjmp, "dr"
	.align 4
	.long __imp_setjmp__name, __imp__setjmp
#else
#error "Unknown target"
#endif
