//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbsrev.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbsrev,"w"
	.globl __imp__mbsrev
	.align 8
__imp__mbsrev:
	.quad 0
	.section .rdata, "dr"
__imp__mbsrev_name:
	.ascii "_mbsrev"
	.section .rdata$imp.msvcrt.dll._mbsrev, "dr"
	.align 8
	.quad __imp__mbsrev_name, __imp__mbsrev
#elif __i386__
	.section .data$msvcrt.dll.iat._mbsrev, "w"
	.align 4
	.globl __imp___mbsrev
__imp___mbsrev:
	.long 0
	.section .rdata, "dr"
__imp___mbsrev_name:
	.ascii "_mbsrev"
	.section .rdata$imp.msvcrt.dll._mbsrev, "dr"
	.align 4
	.long __imp__mbsrev__name, __imp___mbsrev
#else
#error "Unknown target"
#endif
