//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ismbslead.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ismbslead,"w"
	.globl __imp__ismbslead
	.align 8
__imp__ismbslead:
	.quad 0
	.section .rdata, "dr"
__imp__ismbslead_name:
	.ascii "_ismbslead"
	.section .rdata$imp.msvcrt.dll._ismbslead, "dr"
	.align 8
	.quad __imp__ismbslead_name, __imp__ismbslead
#elif __i386__
	.section .data$msvcrt.dll.iat._ismbslead, "w"
	.align 4
	.globl __imp___ismbslead
__imp___ismbslead:
	.long 0
	.section .rdata, "dr"
__imp___ismbslead_name:
	.ascii "_ismbslead"
	.section .rdata$imp.msvcrt.dll._ismbslead, "dr"
	.align 4
	.long __imp__ismbslead__name, __imp___ismbslead
#else
#error "Unknown target"
#endif
