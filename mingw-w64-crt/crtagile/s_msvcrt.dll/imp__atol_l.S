//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__atol_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._atol_l,"w"
	.globl __imp__atol_l
	.align 8
__imp__atol_l:
	.quad 0
	.section .rdata, "dr"
__imp__atol_l_name:
	.ascii "_atol_l"
	.section .rdata$imp.msvcrt.dll._atol_l, "dr"
	.align 8
	.quad __imp__atol_l_name, __imp__atol_l
#elif __i386__
	.section .data$msvcrt.dll.iat._atol_l, "w"
	.align 4
	.globl __imp___atol_l
__imp___atol_l:
	.long 0
	.section .rdata, "dr"
__imp___atol_l_name:
	.ascii "_atol_l"
	.section .rdata$imp.msvcrt.dll._atol_l, "dr"
	.align 4
	.long __imp__atol_l__name, __imp___atol_l
#else
#error "Unknown target"
#endif
