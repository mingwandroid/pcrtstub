//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__atoldbl.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._atoldbl,"w"
	.globl __imp__atoldbl
	.align 8
__imp__atoldbl:
	.quad 0
	.section .rdata, "dr"
__imp__atoldbl_name:
	.ascii "_atoldbl"
	.section .rdata$imp.msvcrt.dll._atoldbl, "dr"
	.align 8
	.quad __imp__atoldbl_name, __imp__atoldbl
#elif __i386__
	.section .data$msvcrt.dll.iat._atoldbl, "w"
	.align 4
	.globl __imp___atoldbl
__imp___atoldbl:
	.long 0
	.section .rdata, "dr"
__imp___atoldbl_name:
	.ascii "_atoldbl"
	.section .rdata$imp.msvcrt.dll._atoldbl, "dr"
	.align 4
	.long __imp__atoldbl__name, __imp___atoldbl
#else
#error "Unknown target"
#endif
