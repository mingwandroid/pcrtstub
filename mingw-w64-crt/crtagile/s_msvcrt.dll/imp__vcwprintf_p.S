//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__vcwprintf_p.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._vcwprintf_p,"w"
	.globl __imp__vcwprintf_p
	.align 8
__imp__vcwprintf_p:
	.quad 0
	.section .rdata, "dr"
__imp__vcwprintf_p_name:
	.ascii "_vcwprintf_p"
	.section .rdata$imp.msvcrt.dll._vcwprintf_p, "dr"
	.align 8
	.quad __imp__vcwprintf_p_name, __imp__vcwprintf_p
#elif __i386__
	.section .data$msvcrt.dll.iat._vcwprintf_p, "w"
	.align 4
	.globl __imp___vcwprintf_p
__imp___vcwprintf_p:
	.long 0
	.section .rdata, "dr"
__imp___vcwprintf_p_name:
	.ascii "_vcwprintf_p"
	.section .rdata$imp.msvcrt.dll._vcwprintf_p, "dr"
	.align 4
	.long __imp__vcwprintf_p__name, __imp___vcwprintf_p
#else
#error "Unknown target"
#endif
