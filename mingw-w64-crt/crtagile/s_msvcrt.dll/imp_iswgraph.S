//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_iswgraph.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.iswgraph,"w"
	.globl __imp_iswgraph
	.align 8
__imp_iswgraph:
	.quad 0
	.section .rdata, "dr"
__imp_iswgraph_name:
	.ascii "iswgraph"
	.section .rdata$imp.msvcrt.dll.iswgraph, "dr"
	.align 8
	.quad __imp_iswgraph_name, __imp_iswgraph
#elif __i386__
	.section .data$msvcrt.dll.iat.iswgraph, "w"
	.align 4
	.globl __imp__iswgraph
__imp__iswgraph:
	.long 0
	.section .rdata, "dr"
__imp__iswgraph_name:
	.ascii "iswgraph"
	.section .rdata$imp.msvcrt.dll.iswgraph, "dr"
	.align 4
	.long __imp_iswgraph__name, __imp__iswgraph
#else
#error "Unknown target"
#endif
