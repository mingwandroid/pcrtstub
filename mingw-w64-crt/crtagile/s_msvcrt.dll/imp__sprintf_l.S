//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__sprintf_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._sprintf_l,"w"
	.globl __imp__sprintf_l
	.align 8
__imp__sprintf_l:
	.quad 0
	.section .rdata, "dr"
__imp__sprintf_l_name:
	.ascii "_sprintf_l"
	.section .rdata$imp.msvcrt.dll._sprintf_l, "dr"
	.align 8
	.quad __imp__sprintf_l_name, __imp__sprintf_l
#elif __i386__
	.section .data$msvcrt.dll.iat._sprintf_l, "w"
	.align 4
	.globl __imp___sprintf_l
__imp___sprintf_l:
	.long 0
	.section .rdata, "dr"
__imp___sprintf_l_name:
	.ascii "_sprintf_l"
	.section .rdata$imp.msvcrt.dll._sprintf_l, "dr"
	.align 4
	.long __imp__sprintf_l__name, __imp___sprintf_l
#else
#error "Unknown target"
#endif
