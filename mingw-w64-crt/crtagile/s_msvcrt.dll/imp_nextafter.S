//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_nextafter.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.nextafter,"w"
	.globl __imp_nextafter
	.align 8
__imp_nextafter:
	.quad 0
	.section .rdata$imp.msvcrt.dll.nextafter, "dr"
	.align 8
	.quad __imp__nextafter, 1, __imp_nextafter, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.nextafter, "w"
	.align 4
	.globl __imp__nextafter
__imp__nextafter:
	.long 0
	.section .rdata$imp.msvcrt.dll.nextafter, "dr"
	.align 4
	.long __imp___nextafter, 1, __imp__nextafter, 0
#else
#error "Unknown target"
#endif
