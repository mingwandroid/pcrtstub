//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_strset.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.strset,"w"
	.globl __imp_strset
	.align 8
__imp_strset:
	.quad 0
	.section .rdata$imp.msvcrt.dll.strset, "dr"
	.align 8
	.quad __imp__strset, 1, __imp_strset, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.strset, "w"
	.align 4
	.globl __imp__strset
__imp__strset:
	.long 0
	.section .rdata$imp.msvcrt.dll.strset, "dr"
	.align 4
	.long __imp___strset, 1, __imp__strset, 0
#else
#error "Unknown target"
#endif
