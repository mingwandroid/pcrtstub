//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__chdrive.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._chdrive,"w"
	.globl __imp__chdrive
	.align 8
__imp__chdrive:
	.quad 0
	.section .rdata, "dr"
__imp__chdrive_name:
	.ascii "_chdrive"
	.section .rdata$imp.msvcrt.dll._chdrive, "dr"
	.align 8
	.quad __imp__chdrive_name, __imp__chdrive
#elif __i386__
	.section .data$msvcrt.dll.iat._chdrive, "w"
	.align 4
	.globl __imp___chdrive
__imp___chdrive:
	.long 0
	.section .rdata, "dr"
__imp___chdrive_name:
	.ascii "_chdrive"
	.section .rdata$imp.msvcrt.dll._chdrive, "dr"
	.align 4
	.long __imp__chdrive__name, __imp___chdrive
#else
#error "Unknown target"
#endif
