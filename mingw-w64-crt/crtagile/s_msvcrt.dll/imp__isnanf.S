//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__isnanf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._isnanf,"w"
	.globl __imp__isnanf
	.align 8
__imp__isnanf:
	.quad 0
	.section .rdata, "dr"
__imp__isnanf_name:
	.ascii "_isnanf"
	.section .rdata$imp.msvcrt.dll._isnanf, "dr"
	.align 8
	.quad __imp__isnanf_name, __imp__isnanf
#elif __i386__
	.section .data$msvcrt.dll.iat._isnanf, "w"
	.align 4
	.globl __imp___isnanf
__imp___isnanf:
	.long 0
	.section .rdata, "dr"
__imp___isnanf_name:
	.ascii "_isnanf"
	.section .rdata$imp.msvcrt.dll._isnanf, "dr"
	.align 4
	.long __imp__isnanf__name, __imp___isnanf
#else
#error "Unknown target"
#endif
