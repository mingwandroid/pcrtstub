//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wprintf_p.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wprintf_p,"w"
	.globl __imp__wprintf_p
	.align 8
__imp__wprintf_p:
	.quad 0
	.section .rdata, "dr"
__imp__wprintf_p_name:
	.ascii "_wprintf_p"
	.section .rdata$imp.msvcrt.dll._wprintf_p, "dr"
	.align 8
	.quad __imp__wprintf_p_name, __imp__wprintf_p
#elif __i386__
	.section .data$msvcrt.dll.iat._wprintf_p, "w"
	.align 4
	.globl __imp___wprintf_p
__imp___wprintf_p:
	.long 0
	.section .rdata, "dr"
__imp___wprintf_p_name:
	.ascii "_wprintf_p"
	.section .rdata$imp.msvcrt.dll._wprintf_p, "dr"
	.align 4
	.long __imp__wprintf_p__name, __imp___wprintf_p
#else
#error "Unknown target"
#endif
