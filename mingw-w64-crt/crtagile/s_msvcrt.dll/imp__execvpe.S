//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__execvpe.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._execvpe,"w"
	.globl __imp__execvpe
	.align 8
__imp__execvpe:
	.quad 0
	.section .rdata, "dr"
__imp__execvpe_name:
	.ascii "_execvpe"
	.section .rdata$imp.msvcrt.dll._execvpe, "dr"
	.align 8
	.quad __imp__execvpe_name, __imp__execvpe
#elif __i386__
	.section .data$msvcrt.dll.iat._execvpe, "w"
	.align 4
	.globl __imp___execvpe
__imp___execvpe:
	.long 0
	.section .rdata, "dr"
__imp___execvpe_name:
	.ascii "_execvpe"
	.section .rdata$imp.msvcrt.dll._execvpe, "dr"
	.align 4
	.long __imp__execvpe__name, __imp___execvpe
#else
#error "Unknown target"
#endif
