//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__unloaddll.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._unloaddll,"w"
	.globl __imp__unloaddll
	.align 8
__imp__unloaddll:
	.quad 0
	.section .rdata, "dr"
__imp__unloaddll_name:
	.ascii "_unloaddll"
	.section .rdata$imp.msvcrt.dll._unloaddll, "dr"
	.align 8
	.quad __imp__unloaddll_name, __imp__unloaddll
#elif __i386__
	.section .data$msvcrt.dll.iat._unloaddll, "w"
	.align 4
	.globl __imp___unloaddll
__imp___unloaddll:
	.long 0
	.section .rdata, "dr"
__imp___unloaddll_name:
	.ascii "_unloaddll"
	.section .rdata$imp.msvcrt.dll._unloaddll, "dr"
	.align 4
	.long __imp__unloaddll__name, __imp___unloaddll
#else
#error "Unknown target"
#endif
