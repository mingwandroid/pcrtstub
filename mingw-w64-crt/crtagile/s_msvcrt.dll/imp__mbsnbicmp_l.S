//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbsnbicmp_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbsnbicmp_l,"w"
	.globl __imp__mbsnbicmp_l
	.align 8
__imp__mbsnbicmp_l:
	.quad 0
	.section .rdata, "dr"
__imp__mbsnbicmp_l_name:
	.ascii "_mbsnbicmp_l"
	.section .rdata$imp.msvcrt.dll._mbsnbicmp_l, "dr"
	.align 8
	.quad __imp__mbsnbicmp_l_name, __imp__mbsnbicmp_l
#elif __i386__
	.section .data$msvcrt.dll.iat._mbsnbicmp_l, "w"
	.align 4
	.globl __imp___mbsnbicmp_l
__imp___mbsnbicmp_l:
	.long 0
	.section .rdata, "dr"
__imp___mbsnbicmp_l_name:
	.ascii "_mbsnbicmp_l"
	.section .rdata$imp.msvcrt.dll._mbsnbicmp_l, "dr"
	.align 4
	.long __imp__mbsnbicmp_l__name, __imp___mbsnbicmp_l
#else
#error "Unknown target"
#endif
