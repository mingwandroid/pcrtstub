//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_mbsrtowcs_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.mbsrtowcs_s,"w"
	.globl __imp_mbsrtowcs_s
	.align 8
__imp_mbsrtowcs_s:
	.quad 0
	.section .rdata, "dr"
__imp_mbsrtowcs_s_name:
	.ascii "mbsrtowcs_s"
	.section .rdata$imp.msvcrt.dll.mbsrtowcs_s, "dr"
	.align 8
	.quad __imp_mbsrtowcs_s_name, __imp_mbsrtowcs_s
#elif __i386__
	.section .data$msvcrt.dll.iat.mbsrtowcs_s, "w"
	.align 4
	.globl __imp__mbsrtowcs_s
__imp__mbsrtowcs_s:
	.long 0
	.section .rdata, "dr"
__imp__mbsrtowcs_s_name:
	.ascii "mbsrtowcs_s"
	.section .rdata$imp.msvcrt.dll.mbsrtowcs_s, "dr"
	.align 4
	.long __imp_mbsrtowcs_s__name, __imp__mbsrtowcs_s
#else
#error "Unknown target"
#endif
