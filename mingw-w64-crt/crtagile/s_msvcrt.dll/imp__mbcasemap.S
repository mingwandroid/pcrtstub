//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbcasemap.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbcasemap,"w"
	.globl __imp__mbcasemap
	.align 8
__imp__mbcasemap:
	.quad 0
	.section .rdata, "dr"
__imp__mbcasemap_name:
	.ascii "_mbcasemap"
	.section .rdata$imp.msvcrt.dll._mbcasemap, "dr"
	.align 8
	.quad __imp__mbcasemap_name, __imp__mbcasemap
#elif __i386__
	.section .data$msvcrt.dll.iat._mbcasemap, "w"
	.align 4
	.globl __imp___mbcasemap
__imp___mbcasemap:
	.long 0
	.section .rdata, "dr"
__imp___mbcasemap_name:
	.ascii "_mbcasemap"
	.section .rdata$imp.msvcrt.dll._mbcasemap, "dr"
	.align 4
	.long __imp__mbcasemap__name, __imp___mbcasemap
#else
#error "Unknown target"
#endif
