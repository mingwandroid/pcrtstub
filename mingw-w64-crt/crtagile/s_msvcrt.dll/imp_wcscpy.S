//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_wcscpy.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.wcscpy,"w"
	.globl __imp_wcscpy
	.align 8
__imp_wcscpy:
	.quad 0
	.section .rdata, "dr"
__imp_wcscpy_name:
	.ascii "wcscpy"
	.section .rdata$imp.msvcrt.dll.wcscpy, "dr"
	.align 8
	.quad __imp_wcscpy_name, __imp_wcscpy
#elif __i386__
	.section .data$msvcrt.dll.iat.wcscpy, "w"
	.align 4
	.globl __imp__wcscpy
__imp__wcscpy:
	.long 0
	.section .rdata, "dr"
__imp__wcscpy_name:
	.ascii "wcscpy"
	.section .rdata$imp.msvcrt.dll.wcscpy, "dr"
	.align 4
	.long __imp_wcscpy__name, __imp__wcscpy
#else
#error "Unknown target"
#endif
