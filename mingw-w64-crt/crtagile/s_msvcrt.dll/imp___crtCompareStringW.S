//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp___crtCompareStringW.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.__crtCompareStringW,"w"
	.globl __imp___crtCompareStringW
	.align 8
__imp___crtCompareStringW:
	.quad 0
	.section .rdata, "dr"
__imp___crtCompareStringW_name:
	.ascii "__crtCompareStringW"
	.section .rdata$imp.msvcrt.dll.__crtCompareStringW, "dr"
	.align 8
	.quad __imp___crtCompareStringW_name, __imp___crtCompareStringW
#elif __i386__
	.section .data$msvcrt.dll.iat.__crtCompareStringW, "w"
	.align 4
	.globl __imp____crtCompareStringW
__imp____crtCompareStringW:
	.long 0
	.section .rdata, "dr"
__imp____crtCompareStringW_name:
	.ascii "__crtCompareStringW"
	.section .rdata$imp.msvcrt.dll.__crtCompareStringW, "dr"
	.align 4
	.long __imp___crtCompareStringW__name, __imp____crtCompareStringW
#else
#error "Unknown target"
#endif
