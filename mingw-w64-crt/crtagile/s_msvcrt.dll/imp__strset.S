//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__strset.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._strset,"w"
	.globl __imp__strset
	.align 8
__imp__strset:
	.quad 0
	.section .rdata, "dr"
__imp__strset_name:
	.ascii "_strset"
	.section .rdata$imp.msvcrt.dll._strset, "dr"
	.align 8
	.quad __imp__strset_name, __imp__strset
#elif __i386__
	.section .data$msvcrt.dll.iat._strset, "w"
	.align 4
	.globl __imp___strset
__imp___strset:
	.long 0
	.section .rdata, "dr"
__imp___strset_name:
	.ascii "_strset"
	.section .rdata$imp.msvcrt.dll._strset, "dr"
	.align 4
	.long __imp__strset__name, __imp___strset
#else
#error "Unknown target"
#endif
