//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__iswgraph_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._iswgraph_l,"w"
	.globl __imp__iswgraph_l
	.align 8
__imp__iswgraph_l:
	.quad 0
	.section .rdata, "dr"
__imp__iswgraph_l_name:
	.ascii "_iswgraph_l"
	.section .rdata$imp.msvcrt.dll._iswgraph_l, "dr"
	.align 8
	.quad __imp__iswgraph_l_name, __imp__iswgraph_l
#elif __i386__
	.section .data$msvcrt.dll.iat._iswgraph_l, "w"
	.align 4
	.globl __imp___iswgraph_l
__imp___iswgraph_l:
	.long 0
	.section .rdata, "dr"
__imp___iswgraph_l_name:
	.ascii "_iswgraph_l"
	.section .rdata$imp.msvcrt.dll._iswgraph_l, "dr"
	.align 4
	.long __imp__iswgraph_l__name, __imp___iswgraph_l
#else
#error "Unknown target"
#endif
