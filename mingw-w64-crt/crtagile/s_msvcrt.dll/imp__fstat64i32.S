//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__fstat64i32.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._fstat64i32,"w"
	.globl __imp__fstat64i32
	.align 8
__imp__fstat64i32:
	.quad 0
	.section .rdata$imp.msvcrt.dll._fstat64i32, "dr"
	.align 8
	.quad __imp__fstat, 1, __imp__fstat64i32, 0
#elif __i386__
	.section .data$msvcrt.dll.iat._fstat64i32, "w"
	.align 4
	.globl __imp___fstat64i32
__imp___fstat64i32:
	.long 0
	.section .rdata$imp.msvcrt.dll._fstat64i32, "dr"
	.align 4
	.long __imp___fstat, 1, __imp___fstat64i32, 0
#else
#error "Unknown target"
#endif
