//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ismbbgraph_l.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ismbbgraph_l,"w"
	.globl __imp__ismbbgraph_l
	.align 8
__imp__ismbbgraph_l:
	.quad 0
	.section .rdata, "dr"
__imp__ismbbgraph_l_name:
	.ascii "_ismbbgraph_l"
	.section .rdata$imp.msvcrt.dll._ismbbgraph_l, "dr"
	.align 8
	.quad __imp__ismbbgraph_l_name, __imp__ismbbgraph_l
#elif __i386__
	.section .data$msvcrt.dll.iat._ismbbgraph_l, "w"
	.align 4
	.globl __imp___ismbbgraph_l
__imp___ismbbgraph_l:
	.long 0
	.section .rdata, "dr"
__imp___ismbbgraph_l_name:
	.ascii "_ismbbgraph_l"
	.section .rdata$imp.msvcrt.dll._ismbbgraph_l, "dr"
	.align 4
	.long __imp__ismbbgraph_l__name, __imp___ismbbgraph_l
#else
#error "Unknown target"
#endif
