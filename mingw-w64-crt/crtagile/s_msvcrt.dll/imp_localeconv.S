//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_localeconv.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.localeconv,"w"
	.globl __imp_localeconv
	.align 8
__imp_localeconv:
	.quad 0
	.section .rdata, "dr"
__imp_localeconv_name:
	.ascii "localeconv"
	.section .rdata$imp.msvcrt.dll.localeconv, "dr"
	.align 8
	.quad __imp_localeconv_name, __imp_localeconv
#elif __i386__
	.section .data$msvcrt.dll.iat.localeconv, "w"
	.align 4
	.globl __imp__localeconv
__imp__localeconv:
	.long 0
	.section .rdata, "dr"
__imp__localeconv_name:
	.ascii "localeconv"
	.section .rdata$imp.msvcrt.dll.localeconv, "dr"
	.align 4
	.long __imp_localeconv__name, __imp__localeconv
#else
#error "Unknown target"
#endif
