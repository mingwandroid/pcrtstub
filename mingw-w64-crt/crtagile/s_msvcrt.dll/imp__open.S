//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__open.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._open,"w"
	.globl __imp__open
	.align 8
__imp__open:
	.quad 0
	.section .rdata, "dr"
__imp__open_name:
	.ascii "_open"
	.section .rdata$imp.msvcrt.dll._open, "dr"
	.align 8
	.quad __imp__open_name, __imp__open
#elif __i386__
	.section .data$msvcrt.dll.iat._open, "w"
	.align 4
	.globl __imp___open
__imp___open:
	.long 0
	.section .rdata, "dr"
__imp___open_name:
	.ascii "_open"
	.section .rdata$imp.msvcrt.dll._open, "dr"
	.align 4
	.long __imp__open__name, __imp___open
#else
#error "Unknown target"
#endif
