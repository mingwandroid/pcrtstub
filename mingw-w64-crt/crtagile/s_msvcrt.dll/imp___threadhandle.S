//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp___threadhandle.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.__threadhandle,"w"
	.globl __imp___threadhandle
	.align 8
__imp___threadhandle:
	.quad 0
	.section .rdata, "dr"
__imp___threadhandle_name:
	.ascii "__threadhandle"
	.section .rdata$imp.msvcrt.dll.__threadhandle, "dr"
	.align 8
	.quad __imp___threadhandle_name, __imp___threadhandle
#elif __i386__
	.section .data$msvcrt.dll.iat.__threadhandle, "w"
	.align 4
	.globl __imp____threadhandle
__imp____threadhandle:
	.long 0
	.section .rdata, "dr"
__imp____threadhandle_name:
	.ascii "__threadhandle"
	.section .rdata$imp.msvcrt.dll.__threadhandle, "dr"
	.align 4
	.long __imp___threadhandle__name, __imp____threadhandle
#else
#error "Unknown target"
#endif
