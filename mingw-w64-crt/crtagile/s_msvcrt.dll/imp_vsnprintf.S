//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_vsnprintf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.vsnprintf,"w"
	.globl __imp_vsnprintf
	.align 8
__imp_vsnprintf:
	.quad 0
	.section .rdata$imp.msvcrt.dll.vsnprintf, "dr"
	.align 8
	.quad __imp__vsnprintf, 1, __imp_vsnprintf, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.vsnprintf, "w"
	.align 4
	.globl __imp__vsnprintf
__imp__vsnprintf:
	.long 0
	.section .rdata$imp.msvcrt.dll.vsnprintf, "dr"
	.align 4
	.long __imp___vsnprintf, 1, __imp__vsnprintf, 0
#else
#error "Unknown target"
#endif
