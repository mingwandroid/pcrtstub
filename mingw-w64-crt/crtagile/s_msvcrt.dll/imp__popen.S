//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__popen.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._popen,"w"
	.globl __imp__popen
	.align 8
__imp__popen:
	.quad 0
	.section .rdata, "dr"
__imp__popen_name:
	.ascii "_popen"
	.section .rdata$imp.msvcrt.dll._popen, "dr"
	.align 8
	.quad __imp__popen_name, __imp__popen
#elif __i386__
	.section .data$msvcrt.dll.iat._popen, "w"
	.align 4
	.globl __imp___popen
__imp___popen:
	.long 0
	.section .rdata, "dr"
__imp___popen_name:
	.ascii "_popen"
	.section .rdata$imp.msvcrt.dll._popen, "dr"
	.align 4
	.long __imp__popen__name, __imp___popen
#else
#error "Unknown target"
#endif
