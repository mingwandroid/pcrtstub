//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__itow_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._itow_s,"w"
	.globl __imp__itow_s
	.align 8
__imp__itow_s:
	.quad 0
	.section .rdata, "dr"
__imp__itow_s_name:
	.ascii "_itow_s"
	.section .rdata$imp.msvcrt.dll._itow_s, "dr"
	.align 8
	.quad __imp__itow_s_name, __imp__itow_s
#elif __i386__
	.section .data$msvcrt.dll.iat._itow_s, "w"
	.align 4
	.globl __imp___itow_s
__imp___itow_s:
	.long 0
	.section .rdata, "dr"
__imp___itow_s_name:
	.ascii "_itow_s"
	.section .rdata$imp.msvcrt.dll._itow_s, "dr"
	.align 4
	.long __imp__itow_s__name, __imp___itow_s
#else
#error "Unknown target"
#endif
