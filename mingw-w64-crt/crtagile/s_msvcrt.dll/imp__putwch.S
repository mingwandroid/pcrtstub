//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__putwch.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._putwch,"w"
	.globl __imp__putwch
	.align 8
__imp__putwch:
	.quad 0
	.section .rdata, "dr"
__imp__putwch_name:
	.ascii "_putwch"
	.section .rdata$imp.msvcrt.dll._putwch, "dr"
	.align 8
	.quad __imp__putwch_name, __imp__putwch
#elif __i386__
	.section .data$msvcrt.dll.iat._putwch, "w"
	.align 4
	.globl __imp___putwch
__imp___putwch:
	.long 0
	.section .rdata, "dr"
__imp___putwch_name:
	.ascii "_putwch"
	.section .rdata$imp.msvcrt.dll._putwch, "dr"
	.align 4
	.long __imp__putwch__name, __imp___putwch
#else
#error "Unknown target"
#endif
