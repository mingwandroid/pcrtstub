//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__tell.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._tell,"w"
	.globl __imp__tell
	.align 8
__imp__tell:
	.quad 0
	.section .rdata, "dr"
__imp__tell_name:
	.ascii "_tell"
	.section .rdata$imp.msvcrt.dll._tell, "dr"
	.align 8
	.quad __imp__tell_name, __imp__tell
#elif __i386__
	.section .data$msvcrt.dll.iat._tell, "w"
	.align 4
	.globl __imp___tell
__imp___tell:
	.long 0
	.section .rdata, "dr"
__imp___tell_name:
	.ascii "_tell"
	.section .rdata$imp.msvcrt.dll._tell, "dr"
	.align 4
	.long __imp__tell__name, __imp___tell
#else
#error "Unknown target"
#endif
