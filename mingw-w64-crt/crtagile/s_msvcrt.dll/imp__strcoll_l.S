//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__strcoll_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._strcoll_l,"w"
	.globl __imp__strcoll_l
	.align 8
__imp__strcoll_l:
	.quad 0
	.section .rdata, "dr"
__imp__strcoll_l_name:
	.ascii "_strcoll_l"
	.section .rdata$imp.msvcrt.dll._strcoll_l, "dr"
	.align 8
	.quad __imp__strcoll_l_name, __imp__strcoll_l
#elif __i386__
	.section .data$msvcrt.dll.iat._strcoll_l, "w"
	.align 4
	.globl __imp___strcoll_l
__imp___strcoll_l:
	.long 0
	.section .rdata, "dr"
__imp___strcoll_l_name:
	.ascii "_strcoll_l"
	.section .rdata$imp.msvcrt.dll._strcoll_l, "dr"
	.align 4
	.long __imp__strcoll_l__name, __imp___strcoll_l
#else
#error "Unknown target"
#endif
