//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbccpy.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbccpy,"w"
	.globl __imp__mbccpy
	.align 8
__imp__mbccpy:
	.quad 0
	.section .rdata, "dr"
__imp__mbccpy_name:
	.ascii "_mbccpy"
	.section .rdata$imp.msvcrt.dll._mbccpy, "dr"
	.align 8
	.quad __imp__mbccpy_name, __imp__mbccpy
#elif __i386__
	.section .data$msvcrt.dll.iat._mbccpy, "w"
	.align 4
	.globl __imp___mbccpy
__imp___mbccpy:
	.long 0
	.section .rdata, "dr"
__imp___mbccpy_name:
	.ascii "_mbccpy"
	.section .rdata$imp.msvcrt.dll._mbccpy, "dr"
	.align 4
	.long __imp__mbccpy__name, __imp___mbccpy
#else
#error "Unknown target"
#endif
