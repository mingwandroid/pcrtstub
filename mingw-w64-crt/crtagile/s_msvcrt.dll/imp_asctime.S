//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_asctime.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.asctime,"w"
	.globl __imp_asctime
	.align 8
__imp_asctime:
	.quad 0
	.section .rdata, "dr"
__imp_asctime_name:
	.ascii "asctime"
	.section .rdata$imp.msvcrt.dll.asctime, "dr"
	.align 8
	.quad __imp_asctime_name, __imp_asctime
#elif __i386__
	.section .data$msvcrt.dll.iat.asctime, "w"
	.align 4
	.globl __imp__asctime
__imp__asctime:
	.long 0
	.section .rdata, "dr"
__imp__asctime_name:
	.ascii "asctime"
	.section .rdata$imp.msvcrt.dll.asctime, "dr"
	.align 4
	.long __imp_asctime__name, __imp__asctime
#else
#error "Unknown target"
#endif
