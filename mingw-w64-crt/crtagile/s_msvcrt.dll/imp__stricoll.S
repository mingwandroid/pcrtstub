//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__stricoll.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._stricoll,"w"
	.globl __imp__stricoll
	.align 8
__imp__stricoll:
	.quad 0
	.section .rdata, "dr"
__imp__stricoll_name:
	.ascii "_stricoll"
	.section .rdata$imp.msvcrt.dll._stricoll, "dr"
	.align 8
	.quad __imp__stricoll_name, __imp__stricoll
#elif __i386__
	.section .data$msvcrt.dll.iat._stricoll, "w"
	.align 4
	.globl __imp___stricoll
__imp___stricoll:
	.long 0
	.section .rdata, "dr"
__imp___stricoll_name:
	.ascii "_stricoll"
	.section .rdata$imp.msvcrt.dll._stricoll, "dr"
	.align 4
	.long __imp__stricoll__name, __imp___stricoll
#else
#error "Unknown target"
#endif
