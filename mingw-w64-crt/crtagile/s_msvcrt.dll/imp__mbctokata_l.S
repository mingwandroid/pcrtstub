//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbctokata_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbctokata_l,"w"
	.globl __imp__mbctokata_l
	.align 8
__imp__mbctokata_l:
	.quad 0
	.section .rdata, "dr"
__imp__mbctokata_l_name:
	.ascii "_mbctokata_l"
	.section .rdata$imp.msvcrt.dll._mbctokata_l, "dr"
	.align 8
	.quad __imp__mbctokata_l_name, __imp__mbctokata_l
#elif __i386__
	.section .data$msvcrt.dll.iat._mbctokata_l, "w"
	.align 4
	.globl __imp___mbctokata_l
__imp___mbctokata_l:
	.long 0
	.section .rdata, "dr"
__imp___mbctokata_l_name:
	.ascii "_mbctokata_l"
	.section .rdata$imp.msvcrt.dll._mbctokata_l, "dr"
	.align 4
	.long __imp__mbctokata_l__name, __imp___mbctokata_l
#else
#error "Unknown target"
#endif
