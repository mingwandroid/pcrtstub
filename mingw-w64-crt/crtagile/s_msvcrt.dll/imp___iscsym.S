//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp___iscsym.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.__iscsym,"w"
	.globl __imp___iscsym
	.align 8
__imp___iscsym:
	.quad 0
	.section .rdata, "dr"
__imp___iscsym_name:
	.ascii "__iscsym"
	.section .rdata$imp.msvcrt.dll.__iscsym, "dr"
	.align 8
	.quad __imp___iscsym_name, __imp___iscsym
#elif __i386__
	.section .data$msvcrt.dll.iat.__iscsym, "w"
	.align 4
	.globl __imp____iscsym
__imp____iscsym:
	.long 0
	.section .rdata, "dr"
__imp____iscsym_name:
	.ascii "__iscsym"
	.section .rdata$imp.msvcrt.dll.__iscsym, "dr"
	.align 4
	.long __imp___iscsym__name, __imp____iscsym
#else
#error "Unknown target"
#endif
