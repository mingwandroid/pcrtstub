//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__CxxThrowException.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._CxxThrowException,"w"
	.globl __imp__CxxThrowException
	.align 8
__imp__CxxThrowException:
	.quad 0
	.section .rdata, "dr"
__imp__CxxThrowException_name:
	.ascii "_CxxThrowException"
	.section .rdata$imp.msvcrt.dll._CxxThrowException, "dr"
	.align 8
	.quad __imp__CxxThrowException_name, __imp__CxxThrowException
#elif __i386__
	.section .data$msvcrt.dll.iat._CxxThrowException, "w"
	.align 4
	.globl __imp___CxxThrowException
__imp___CxxThrowException:
	.long 0
	.section .rdata, "dr"
__imp___CxxThrowException_name:
	.ascii "_CxxThrowException"
	.section .rdata$imp.msvcrt.dll._CxxThrowException, "dr"
	.align 4
	.long __imp__CxxThrowException__name, __imp___CxxThrowException
#else
#error "Unknown target"
#endif
