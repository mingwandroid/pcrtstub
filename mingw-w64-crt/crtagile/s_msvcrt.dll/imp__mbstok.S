//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__mbstok.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._mbstok,"w"
	.globl __imp__mbstok
	.align 8
__imp__mbstok:
	.quad 0
	.section .rdata, "dr"
__imp__mbstok_name:
	.ascii "_mbstok"
	.section .rdata$imp.msvcrt.dll._mbstok, "dr"
	.align 8
	.quad __imp__mbstok_name, __imp__mbstok
#elif __i386__
	.section .data$msvcrt.dll.iat._mbstok, "w"
	.align 4
	.globl __imp___mbstok
__imp___mbstok:
	.long 0
	.section .rdata, "dr"
__imp___mbstok_name:
	.ascii "_mbstok"
	.section .rdata$imp.msvcrt.dll._mbstok, "dr"
	.align 4
	.long __imp__mbstok__name, __imp___mbstok
#else
#error "Unknown target"
#endif
