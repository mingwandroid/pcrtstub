//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ismbcl1_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ismbcl1_l,"w"
	.globl __imp__ismbcl1_l
	.align 8
__imp__ismbcl1_l:
	.quad 0
	.section .rdata, "dr"
__imp__ismbcl1_l_name:
	.ascii "_ismbcl1_l"
	.section .rdata$imp.msvcrt.dll._ismbcl1_l, "dr"
	.align 8
	.quad __imp__ismbcl1_l_name, __imp__ismbcl1_l
#elif __i386__
	.section .data$msvcrt.dll.iat._ismbcl1_l, "w"
	.align 4
	.globl __imp___ismbcl1_l
__imp___ismbcl1_l:
	.long 0
	.section .rdata, "dr"
__imp___ismbcl1_l_name:
	.ascii "_ismbcl1_l"
	.section .rdata$imp.msvcrt.dll._ismbcl1_l, "dr"
	.align 4
	.long __imp__ismbcl1_l__name, __imp___ismbcl1_l
#else
#error "Unknown target"
#endif
