//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__onexit.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._onexit,"w"
	.globl __imp__onexit
	.align 8
__imp__onexit:
	.quad 0
	.section .rdata, "dr"
__imp__onexit_name:
	.ascii "_onexit"
	.section .rdata$imp.msvcrt.dll._onexit, "dr"
	.align 8
	.quad __imp__onexit_name, __imp__onexit
#elif __i386__
	.section .data$msvcrt.dll.iat._onexit, "w"
	.align 4
	.globl __imp___onexit
__imp___onexit:
	.long 0
	.section .rdata, "dr"
__imp___onexit_name:
	.ascii "_onexit"
	.section .rdata$imp.msvcrt.dll._onexit, "dr"
	.align 4
	.long __imp__onexit__name, __imp___onexit
#else
#error "Unknown target"
#endif
