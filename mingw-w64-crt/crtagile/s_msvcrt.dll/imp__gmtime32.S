//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__gmtime32.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._gmtime32,"w"
	.globl __imp__gmtime32
	.align 8
__imp__gmtime32:
	.quad 0
	.section .rdata, "dr"
__imp__gmtime32_name:
	.ascii "_gmtime32"
	.section .rdata$imp.msvcrt.dll._gmtime32, "dr"
	.align 8
	.quad __imp__gmtime32_name, __imp__gmtime32
#elif __i386__
	.section .data$msvcrt.dll.iat._gmtime32, "w"
	.align 4
	.globl __imp___gmtime32
__imp___gmtime32:
	.long 0
	.section .rdata, "dr"
__imp___gmtime32_name:
	.ascii "_gmtime32"
	.section .rdata$imp.msvcrt.dll._gmtime32, "dr"
	.align 4
	.long __imp__gmtime32__name, __imp___gmtime32
#else
#error "Unknown target"
#endif
