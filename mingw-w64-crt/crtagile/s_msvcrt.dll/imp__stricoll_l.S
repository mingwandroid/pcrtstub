//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__stricoll_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._stricoll_l,"w"
	.globl __imp__stricoll_l
	.align 8
__imp__stricoll_l:
	.quad 0
	.section .rdata, "dr"
__imp__stricoll_l_name:
	.ascii "_stricoll_l"
	.section .rdata$imp.msvcrt.dll._stricoll_l, "dr"
	.align 8
	.quad __imp__stricoll_l_name, __imp__stricoll_l
#elif __i386__
	.section .data$msvcrt.dll.iat._stricoll_l, "w"
	.align 4
	.globl __imp___stricoll_l
__imp___stricoll_l:
	.long 0
	.section .rdata, "dr"
__imp___stricoll_l_name:
	.ascii "_stricoll_l"
	.section .rdata$imp.msvcrt.dll._stricoll_l, "dr"
	.align 4
	.long __imp__stricoll_l__name, __imp___stricoll_l
#else
#error "Unknown target"
#endif
