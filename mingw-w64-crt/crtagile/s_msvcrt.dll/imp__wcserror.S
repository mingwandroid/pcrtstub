//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wcserror.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wcserror,"w"
	.globl __imp__wcserror
	.align 8
__imp__wcserror:
	.quad 0
	.section .rdata, "dr"
__imp__wcserror_name:
	.ascii "_wcserror"
	.section .rdata$imp.msvcrt.dll._wcserror, "dr"
	.align 8
	.quad __imp__wcserror_name, __imp__wcserror
#elif __i386__
	.section .data$msvcrt.dll.iat._wcserror, "w"
	.align 4
	.globl __imp___wcserror
__imp___wcserror:
	.long 0
	.section .rdata, "dr"
__imp___wcserror_name:
	.ascii "_wcserror"
	.section .rdata$imp.msvcrt.dll._wcserror, "dr"
	.align 4
	.long __imp__wcserror__name, __imp___wcserror
#else
#error "Unknown target"
#endif
