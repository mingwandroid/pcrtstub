//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__strncoll_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._strncoll_l,"w"
	.globl __imp__strncoll_l
	.align 8
__imp__strncoll_l:
	.quad 0
	.section .rdata, "dr"
__imp__strncoll_l_name:
	.ascii "_strncoll_l"
	.section .rdata$imp.msvcrt.dll._strncoll_l, "dr"
	.align 8
	.quad __imp__strncoll_l_name, __imp__strncoll_l
#elif __i386__
	.section .data$msvcrt.dll.iat._strncoll_l, "w"
	.align 4
	.globl __imp___strncoll_l
__imp___strncoll_l:
	.long 0
	.section .rdata, "dr"
__imp___strncoll_l_name:
	.ascii "_strncoll_l"
	.section .rdata$imp.msvcrt.dll._strncoll_l, "dr"
	.align 4
	.long __imp__strncoll_l__name, __imp___strncoll_l
#else
#error "Unknown target"
#endif
