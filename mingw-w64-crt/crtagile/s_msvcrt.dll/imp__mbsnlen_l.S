//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbsnlen_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbsnlen_l,"w"
	.globl __imp__mbsnlen_l
	.align 8
__imp__mbsnlen_l:
	.quad 0
	.section .rdata, "dr"
__imp__mbsnlen_l_name:
	.ascii "_mbsnlen_l"
	.section .rdata$imp.msvcrt.dll._mbsnlen_l, "dr"
	.align 8
	.quad __imp__mbsnlen_l_name, __imp__mbsnlen_l
#elif __i386__
	.section .data$msvcrt.dll.iat._mbsnlen_l, "w"
	.align 4
	.globl __imp___mbsnlen_l
__imp___mbsnlen_l:
	.long 0
	.section .rdata, "dr"
__imp___mbsnlen_l_name:
	.ascii "_mbsnlen_l"
	.section .rdata$imp.msvcrt.dll._mbsnlen_l, "dr"
	.align 4
	.long __imp__mbsnlen_l__name, __imp___mbsnlen_l
#else
#error "Unknown target"
#endif
