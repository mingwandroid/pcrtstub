//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__scprintf_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._scprintf_l,"w"
	.globl __imp__scprintf_l
	.align 8
__imp__scprintf_l:
	.quad 0
	.section .rdata, "dr"
__imp__scprintf_l_name:
	.ascii "_scprintf_l"
	.section .rdata$imp.msvcrt.dll._scprintf_l, "dr"
	.align 8
	.quad __imp__scprintf_l_name, __imp__scprintf_l
#elif __i386__
	.section .data$msvcrt.dll.iat._scprintf_l, "w"
	.align 4
	.globl __imp___scprintf_l
__imp___scprintf_l:
	.long 0
	.section .rdata, "dr"
__imp___scprintf_l_name:
	.ascii "_scprintf_l"
	.section .rdata$imp.msvcrt.dll._scprintf_l, "dr"
	.align 4
	.long __imp__scprintf_l__name, __imp___scprintf_l
#else
#error "Unknown target"
#endif
