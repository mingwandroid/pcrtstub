//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp_setvbuf.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat.setvbuf,"w"
	.globl __imp_setvbuf
	.align 8
__imp_setvbuf:
	.quad 0
	.section .rdata, "dr"
__imp_setvbuf_name:
	.ascii "setvbuf"
	.section .rdata$imp.msvcrt.dll.setvbuf, "dr"
	.align 8
	.quad __imp_setvbuf_name, __imp_setvbuf
#elif __i386__
	.section .data$msvcrt.dll.iat.setvbuf, "w"
	.align 4
	.globl __imp__setvbuf
__imp__setvbuf:
	.long 0
	.section .rdata, "dr"
__imp__setvbuf_name:
	.ascii "setvbuf"
	.section .rdata$imp.msvcrt.dll.setvbuf, "dr"
	.align 4
	.long __imp_setvbuf__name, __imp__setvbuf
#else
#error "Unknown target"
#endif
