//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbsbtype_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbsbtype_l,"w"
	.globl __imp__mbsbtype_l
	.align 8
__imp__mbsbtype_l:
	.quad 0
	.section .rdata, "dr"
__imp__mbsbtype_l_name:
	.ascii "_mbsbtype_l"
	.section .rdata$imp.msvcrt.dll._mbsbtype_l, "dr"
	.align 8
	.quad __imp__mbsbtype_l_name, __imp__mbsbtype_l
#elif __i386__
	.section .data$msvcrt.dll.iat._mbsbtype_l, "w"
	.align 4
	.globl __imp___mbsbtype_l
__imp___mbsbtype_l:
	.long 0
	.section .rdata, "dr"
__imp___mbsbtype_l_name:
	.ascii "_mbsbtype_l"
	.section .rdata$imp.msvcrt.dll._mbsbtype_l, "dr"
	.align 4
	.long __imp__mbsbtype_l__name, __imp___mbsbtype_l
#else
#error "Unknown target"
#endif
