//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp____setlc_active_func.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.___setlc_active_func,"w"
	.globl __imp____setlc_active_func
	.align 8
__imp____setlc_active_func:
	.quad 0
	.section .rdata, "dr"
__imp____setlc_active_func_name:
	.ascii "___setlc_active_func"
	.section .rdata$imp.msvcrt.dll.___setlc_active_func, "dr"
	.align 8
	.quad __imp____setlc_active_func_name, __imp____setlc_active_func
#elif __i386__
	.section .data$msvcrt.dll.iat.___setlc_active_func, "w"
	.align 4
	.globl __imp_____setlc_active_func
__imp_____setlc_active_func:
	.long 0
	.section .rdata, "dr"
__imp_____setlc_active_func_name:
	.ascii "___setlc_active_func"
	.section .rdata$imp.msvcrt.dll.___setlc_active_func, "dr"
	.align 4
	.long __imp____setlc_active_func__name, __imp_____setlc_active_func
#else
#error "Unknown target"
#endif
