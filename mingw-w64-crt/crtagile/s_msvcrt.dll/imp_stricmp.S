//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_stricmp.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.stricmp,"w"
	.globl __imp_stricmp
	.align 8
__imp_stricmp:
	.quad 0
	.section .rdata$imp.msvcrt.dll.stricmp, "dr"
	.align 8
	.quad __imp__stricmp, 1, __imp_stricmp, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.stricmp, "w"
	.align 4
	.globl __imp__stricmp
__imp__stricmp:
	.long 0
	.section .rdata$imp.msvcrt.dll.stricmp, "dr"
	.align 4
	.long __imp___stricmp, 1, __imp__stricmp, 0
#else
#error "Unknown target"
#endif
