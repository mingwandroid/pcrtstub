//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__vsnwprintf_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._vsnwprintf_s,"w"
	.globl __imp__vsnwprintf_s
	.align 8
__imp__vsnwprintf_s:
	.quad 0
	.section .rdata, "dr"
__imp__vsnwprintf_s_name:
	.ascii "_vsnwprintf_s"
	.section .rdata$imp.msvcrt.dll._vsnwprintf_s, "dr"
	.align 8
	.quad __imp__vsnwprintf_s_name, __imp__vsnwprintf_s
#elif __i386__
	.section .data$msvcrt.dll.iat._vsnwprintf_s, "w"
	.align 4
	.globl __imp___vsnwprintf_s
__imp___vsnwprintf_s:
	.long 0
	.section .rdata, "dr"
__imp___vsnwprintf_s_name:
	.ascii "_vsnwprintf_s"
	.section .rdata$imp.msvcrt.dll._vsnwprintf_s, "dr"
	.align 4
	.long __imp__vsnwprintf_s__name, __imp___vsnwprintf_s
#else
#error "Unknown target"
#endif
