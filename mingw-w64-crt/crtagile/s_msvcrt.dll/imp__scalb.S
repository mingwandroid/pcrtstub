//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__scalb.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._scalb,"w"
	.globl __imp__scalb
	.align 8
__imp__scalb:
	.quad 0
	.section .rdata, "dr"
__imp__scalb_name:
	.ascii "_scalb"
	.section .rdata$imp.msvcrt.dll._scalb, "dr"
	.align 8
	.quad __imp__scalb_name, __imp__scalb
#elif __i386__
	.section .data$msvcrt.dll.iat._scalb, "w"
	.align 4
	.globl __imp___scalb
__imp___scalb:
	.long 0
	.section .rdata, "dr"
__imp___scalb_name:
	.ascii "_scalb"
	.section .rdata$imp.msvcrt.dll._scalb, "dr"
	.align 4
	.long __imp__scalb__name, __imp___scalb
#else
#error "Unknown target"
#endif
