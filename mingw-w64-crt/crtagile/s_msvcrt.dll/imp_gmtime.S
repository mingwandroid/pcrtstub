//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_gmtime.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.gmtime,"w"
	.globl __imp_gmtime
	.align 8
__imp_gmtime:
	.quad 0
	.section .rdata, "dr"
__imp_gmtime_name:
	.ascii "gmtime"
	.section .rdata$imp.msvcrt.dll.gmtime, "dr"
	.align 8
	.quad __imp_gmtime_name, __imp_gmtime
#elif __i386__
	.section .data$msvcrt.dll.iat.gmtime, "w"
	.align 4
	.globl __imp__gmtime
__imp__gmtime:
	.long 0
	.section .rdata, "dr"
__imp__gmtime_name:
	.ascii "gmtime"
	.section .rdata$imp.msvcrt.dll.gmtime, "dr"
	.align 4
	.long __imp_gmtime__name, __imp__gmtime
#else
#error "Unknown target"
#endif
