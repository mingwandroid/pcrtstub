//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_atof.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.atof,"w"
	.globl __imp_atof
	.align 8
__imp_atof:
	.quad 0
	.section .rdata, "dr"
__imp_atof_name:
	.ascii "atof"
	.section .rdata$imp.msvcrt.dll.atof, "dr"
	.align 8
	.quad __imp_atof_name, __imp_atof
#elif __i386__
	.section .data$msvcrt.dll.iat.atof, "w"
	.align 4
	.globl __imp__atof
__imp__atof:
	.long 0
	.section .rdata, "dr"
__imp__atof_name:
	.ascii "atof"
	.section .rdata$imp.msvcrt.dll.atof, "dr"
	.align 4
	.long __imp_atof__name, __imp__atof
#else
#error "Unknown target"
#endif
