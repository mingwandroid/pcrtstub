//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wcscat_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wcscat_s,"w"
	.globl __imp_wcscat_s
	.align 8
__imp_wcscat_s:
	.quad 0
	.section .rdata, "dr"
__imp_wcscat_s_name:
	.ascii "wcscat_s"
	.section .rdata$imp.msvcrt.dll.wcscat_s, "dr"
	.align 8
	.quad __imp_wcscat_s_name, __imp_wcscat_s
#elif __i386__
	.section .data$msvcrt.dll.iat.wcscat_s, "w"
	.align 4
	.globl __imp__wcscat_s
__imp__wcscat_s:
	.long 0
	.section .rdata, "dr"
__imp__wcscat_s_name:
	.ascii "wcscat_s"
	.section .rdata$imp.msvcrt.dll.wcscat_s, "dr"
	.align 4
	.long __imp_wcscat_s__name, __imp__wcscat_s
#else
#error "Unknown target"
#endif
