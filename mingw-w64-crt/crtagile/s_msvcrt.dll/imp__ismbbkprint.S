//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__ismbbkprint.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._ismbbkprint,"w"
	.globl __imp__ismbbkprint
	.align 8
__imp__ismbbkprint:
	.quad 0
	.section .rdata, "dr"
__imp__ismbbkprint_name:
	.ascii "_ismbbkprint"
	.section .rdata$imp.msvcrt.dll._ismbbkprint, "dr"
	.align 8
	.quad __imp__ismbbkprint_name, __imp__ismbbkprint
#elif __i386__
	.section .data$msvcrt.dll.iat._ismbbkprint, "w"
	.align 4
	.globl __imp___ismbbkprint
__imp___ismbbkprint:
	.long 0
	.section .rdata, "dr"
__imp___ismbbkprint_name:
	.ascii "_ismbbkprint"
	.section .rdata$imp.msvcrt.dll._ismbbkprint, "dr"
	.align 4
	.long __imp__ismbbkprint__name, __imp___ismbbkprint
#else
#error "Unknown target"
#endif
