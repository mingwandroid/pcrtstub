//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp___wgetmainargs.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.__wgetmainargs,"w"
	.globl __imp___wgetmainargs
	.align 8
__imp___wgetmainargs:
	.quad 0
	.section .rdata, "dr"
__imp___wgetmainargs_name:
	.ascii "__wgetmainargs"
	.section .rdata$imp.msvcrt.dll.__wgetmainargs, "dr"
	.align 8
	.quad __imp___wgetmainargs_name, __imp___wgetmainargs
#elif __i386__
	.section .data$msvcrt.dll.iat.__wgetmainargs, "w"
	.align 4
	.globl __imp____wgetmainargs
__imp____wgetmainargs:
	.long 0
	.section .rdata, "dr"
__imp____wgetmainargs_name:
	.ascii "__wgetmainargs"
	.section .rdata$imp.msvcrt.dll.__wgetmainargs, "dr"
	.align 4
	.long __imp___wgetmainargs__name, __imp____wgetmainargs
#else
#error "Unknown target"
#endif
