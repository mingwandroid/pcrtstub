//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_mbstowcs.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.mbstowcs,"w"
	.globl __imp_mbstowcs
	.align 8
__imp_mbstowcs:
	.quad 0
	.section .rdata, "dr"
__imp_mbstowcs_name:
	.ascii "mbstowcs"
	.section .rdata$imp.msvcrt.dll.mbstowcs, "dr"
	.align 8
	.quad __imp_mbstowcs_name, __imp_mbstowcs
#elif __i386__
	.section .data$msvcrt.dll.iat.mbstowcs, "w"
	.align 4
	.globl __imp__mbstowcs
__imp__mbstowcs:
	.long 0
	.section .rdata, "dr"
__imp__mbstowcs_name:
	.ascii "mbstowcs"
	.section .rdata$imp.msvcrt.dll.mbstowcs, "dr"
	.align 4
	.long __imp_mbstowcs__name, __imp__mbstowcs
#else
#error "Unknown target"
#endif
