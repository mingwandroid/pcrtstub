//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_vfwprintf_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.vfwprintf_s,"w"
	.globl __imp_vfwprintf_s
	.align 8
__imp_vfwprintf_s:
	.quad 0
	.section .rdata, "dr"
__imp_vfwprintf_s_name:
	.ascii "vfwprintf_s"
	.section .rdata$imp.msvcrt.dll.vfwprintf_s, "dr"
	.align 8
	.quad __imp_vfwprintf_s_name, __imp_vfwprintf_s
#elif __i386__
	.section .data$msvcrt.dll.iat.vfwprintf_s, "w"
	.align 4
	.globl __imp__vfwprintf_s
__imp__vfwprintf_s:
	.long 0
	.section .rdata, "dr"
__imp__vfwprintf_s_name:
	.ascii "vfwprintf_s"
	.section .rdata$imp.msvcrt.dll.vfwprintf_s, "dr"
	.align 4
	.long __imp_vfwprintf_s__name, __imp__vfwprintf_s
#else
#error "Unknown target"
#endif
