//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wstat.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wstat,"w"
	.globl __imp__wstat
	.align 8
__imp__wstat:
	.quad 0
	.section .rdata, "dr"
__imp__wstat_name:
	.ascii "_wstat"
	.section .rdata$imp.msvcrt.dll._wstat, "dr"
	.align 8
	.quad __imp__wstat_name, __imp__wstat
#elif __i386__
	.section .data$msvcrt.dll.iat._wstat, "w"
	.align 4
	.globl __imp___wstat
__imp___wstat:
	.long 0
	.section .rdata, "dr"
__imp___wstat_name:
	.ascii "_wstat"
	.section .rdata$imp.msvcrt.dll._wstat, "dr"
	.align 4
	.long __imp__wstat__name, __imp___wstat
#else
#error "Unknown target"
#endif
