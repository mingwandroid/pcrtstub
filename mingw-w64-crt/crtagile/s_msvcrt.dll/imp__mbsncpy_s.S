//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbsncpy_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbsncpy_s,"w"
	.globl __imp__mbsncpy_s
	.align 8
__imp__mbsncpy_s:
	.quad 0
	.section .rdata, "dr"
__imp__mbsncpy_s_name:
	.ascii "_mbsncpy_s"
	.section .rdata$imp.msvcrt.dll._mbsncpy_s, "dr"
	.align 8
	.quad __imp__mbsncpy_s_name, __imp__mbsncpy_s
#elif __i386__
	.section .data$msvcrt.dll.iat._mbsncpy_s, "w"
	.align 4
	.globl __imp___mbsncpy_s
__imp___mbsncpy_s:
	.long 0
	.section .rdata, "dr"
__imp___mbsncpy_s_name:
	.ascii "_mbsncpy_s"
	.section .rdata$imp.msvcrt.dll._mbsncpy_s, "dr"
	.align 4
	.long __imp__mbsncpy_s__name, __imp___mbsncpy_s
#else
#error "Unknown target"
#endif
