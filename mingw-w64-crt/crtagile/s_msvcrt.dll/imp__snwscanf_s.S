//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__snwscanf_s.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._snwscanf_s,"w"
	.globl __imp__snwscanf_s
	.align 8
__imp__snwscanf_s:
	.quad 0
	.section .rdata, "dr"
__imp__snwscanf_s_name:
	.ascii "_snwscanf_s"
	.section .rdata$imp.msvcrt.dll._snwscanf_s, "dr"
	.align 8
	.quad __imp__snwscanf_s_name, __imp__snwscanf_s
#elif __i386__
	.section .data$msvcrt.dll.iat._snwscanf_s, "w"
	.align 4
	.globl __imp___snwscanf_s
__imp___snwscanf_s:
	.long 0
	.section .rdata, "dr"
__imp___snwscanf_s_name:
	.ascii "_snwscanf_s"
	.section .rdata$imp.msvcrt.dll._snwscanf_s, "dr"
	.align 4
	.long __imp__snwscanf_s__name, __imp___snwscanf_s
#else
#error "Unknown target"
#endif
