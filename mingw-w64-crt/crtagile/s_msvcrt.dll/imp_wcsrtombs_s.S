//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wcsrtombs_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wcsrtombs_s,"w"
	.globl __imp_wcsrtombs_s
	.align 8
__imp_wcsrtombs_s:
	.quad 0
	.section .rdata, "dr"
__imp_wcsrtombs_s_name:
	.ascii "wcsrtombs_s"
	.section .rdata$imp.msvcrt.dll.wcsrtombs_s, "dr"
	.align 8
	.quad __imp_wcsrtombs_s_name, __imp_wcsrtombs_s
#elif __i386__
	.section .data$msvcrt.dll.iat.wcsrtombs_s, "w"
	.align 4
	.globl __imp__wcsrtombs_s
__imp__wcsrtombs_s:
	.long 0
	.section .rdata, "dr"
__imp__wcsrtombs_s_name:
	.ascii "wcsrtombs_s"
	.section .rdata$imp.msvcrt.dll.wcsrtombs_s, "dr"
	.align 4
	.long __imp_wcsrtombs_s__name, __imp__wcsrtombs_s
#else
#error "Unknown target"
#endif
