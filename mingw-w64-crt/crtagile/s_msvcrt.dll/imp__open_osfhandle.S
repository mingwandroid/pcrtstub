//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__open_osfhandle.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._open_osfhandle,"w"
	.globl __imp__open_osfhandle
	.align 8
__imp__open_osfhandle:
	.quad 0
	.section .rdata, "dr"
__imp__open_osfhandle_name:
	.ascii "_open_osfhandle"
	.section .rdata$imp.msvcrt.dll._open_osfhandle, "dr"
	.align 8
	.quad __imp__open_osfhandle_name, __imp__open_osfhandle
#elif __i386__
	.section .data$msvcrt.dll.iat._open_osfhandle, "w"
	.align 4
	.globl __imp___open_osfhandle
__imp___open_osfhandle:
	.long 0
	.section .rdata, "dr"
__imp___open_osfhandle_name:
	.ascii "_open_osfhandle"
	.section .rdata$imp.msvcrt.dll._open_osfhandle, "dr"
	.align 4
	.long __imp__open_osfhandle__name, __imp___open_osfhandle
#else
#error "Unknown target"
#endif
