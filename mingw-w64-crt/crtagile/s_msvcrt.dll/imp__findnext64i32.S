//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__findnext64i32.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._findnext64i32,"w"
	.globl __imp__findnext64i32
	.align 8
__imp__findnext64i32:
	.quad 0
	.section .rdata$imp.msvcrt.dll._findnext64i32, "dr"
	.align 8
	.quad __imp__findnext, 1, __imp__findnext64i32, 0
#elif __i386__
	.section .data$msvcrt.dll.iat._findnext64i32, "w"
	.align 4
	.globl __imp___findnext64i32
__imp___findnext64i32:
	.long 0
	.section .rdata$imp.msvcrt.dll._findnext64i32, "dr"
	.align 4
	.long __imp___findnext, 1, __imp___findnext64i32, 0
#else
#error "Unknown target"
#endif
