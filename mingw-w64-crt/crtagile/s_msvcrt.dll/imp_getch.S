//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_getch.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.getch,"w"
	.globl __imp_getch
	.align 8
__imp_getch:
	.quad 0
	.section .rdata$imp.msvcrt.dll.getch, "dr"
	.align 8
	.quad __imp__getch, 1, __imp_getch, 0
#elif __i386__
	.section .data$msvcrt.dll.iat.getch, "w"
	.align 4
	.globl __imp__getch
__imp__getch:
	.long 0
	.section .rdata$imp.msvcrt.dll.getch, "dr"
	.align 4
	.long __imp___getch, 1, __imp__getch, 0
#else
#error "Unknown target"
#endif
