//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__findnexti64.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._findnexti64,"w"
	.globl __imp__findnexti64
	.align 8
__imp__findnexti64:
	.quad 0
	.section .rdata, "dr"
__imp__findnexti64_name:
	.ascii "_findnexti64"
	.section .rdata$imp.msvcrt.dll._findnexti64, "dr"
	.align 8
	.quad __imp__findnexti64_name, __imp__findnexti64
#elif __i386__
	.section .data$msvcrt.dll.iat._findnexti64, "w"
	.align 4
	.globl __imp___findnexti64
__imp___findnexti64:
	.long 0
	.section .rdata, "dr"
__imp___findnexti64_name:
	.ascii "_findnexti64"
	.section .rdata$imp.msvcrt.dll._findnexti64, "dr"
	.align 4
	.long __imp__findnexti64__name, __imp___findnexti64
#else
#error "Unknown target"
#endif
