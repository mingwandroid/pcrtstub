//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__vsnprintf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._vsnprintf,"w"
	.globl __imp__vsnprintf
	.align 8
__imp__vsnprintf:
	.quad 0
	.section .rdata, "dr"
__imp__vsnprintf_name:
	.ascii "_vsnprintf"
	.section .rdata$imp.msvcrt.dll._vsnprintf, "dr"
	.align 8
	.quad __imp__vsnprintf_name, __imp__vsnprintf
#elif __i386__
	.section .data$msvcrt.dll.iat._vsnprintf, "w"
	.align 4
	.globl __imp___vsnprintf
__imp___vsnprintf:
	.long 0
	.section .rdata, "dr"
__imp___vsnprintf_name:
	.ascii "_vsnprintf"
	.section .rdata$imp.msvcrt.dll._vsnprintf, "dr"
	.align 4
	.long __imp__vsnprintf__name, __imp___vsnprintf
#else
#error "Unknown target"
#endif
