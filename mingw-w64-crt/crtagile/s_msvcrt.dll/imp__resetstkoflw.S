//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__resetstkoflw.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._resetstkoflw,"w"
	.globl __imp__resetstkoflw
	.align 8
__imp__resetstkoflw:
	.quad 0
	.section .rdata, "dr"
__imp__resetstkoflw_name:
	.ascii "_resetstkoflw"
	.section .rdata$imp.msvcrt.dll._resetstkoflw, "dr"
	.align 8
	.quad __imp__resetstkoflw_name, __imp__resetstkoflw
#elif __i386__
	.section .data$msvcrt.dll.iat._resetstkoflw, "w"
	.align 4
	.globl __imp___resetstkoflw
__imp___resetstkoflw:
	.long 0
	.section .rdata, "dr"
__imp___resetstkoflw_name:
	.ascii "_resetstkoflw"
	.section .rdata$imp.msvcrt.dll._resetstkoflw, "dr"
	.align 4
	.long __imp__resetstkoflw__name, __imp___resetstkoflw
#else
#error "Unknown target"
#endif
