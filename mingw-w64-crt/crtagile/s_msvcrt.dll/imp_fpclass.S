//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_fpclass.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.fpclass,"w"
	.globl __imp_fpclass
	.align 8
__imp_fpclass:
	.quad 0
	.section .rdata$imp.msvcrt.dll.fpclass, "dr"
	.align 8
	.quad __imp__fpclass, 1, __imp_fpclass, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.fpclass, "w"
	.align 4
	.globl __imp__fpclass
__imp__fpclass:
	.long 0
	.section .rdata$imp.msvcrt.dll.fpclass, "dr"
	.align 4
	.long __imp___fpclass, 1, __imp__fpclass, 0
#else
#error "Unknown target"
#endif
