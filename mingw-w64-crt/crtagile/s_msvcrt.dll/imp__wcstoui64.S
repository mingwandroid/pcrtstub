//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wcstoui64.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wcstoui64,"w"
	.globl __imp__wcstoui64
	.align 8
__imp__wcstoui64:
	.quad 0
	.section .rdata, "dr"
__imp__wcstoui64_name:
	.ascii "_wcstoui64"
	.section .rdata$imp.msvcrt.dll._wcstoui64, "dr"
	.align 8
	.quad __imp__wcstoui64_name, __imp__wcstoui64
#elif __i386__
	.section .data$msvcrt.dll.iat._wcstoui64, "w"
	.align 4
	.globl __imp___wcstoui64
__imp___wcstoui64:
	.long 0
	.section .rdata, "dr"
__imp___wcstoui64_name:
	.ascii "_wcstoui64"
	.section .rdata$imp.msvcrt.dll._wcstoui64, "dr"
	.align 4
	.long __imp__wcstoui64__name, __imp___wcstoui64
#else
#error "Unknown target"
#endif
