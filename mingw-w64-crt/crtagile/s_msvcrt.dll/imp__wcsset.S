//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__wcsset.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._wcsset,"w"
	.globl __imp__wcsset
	.align 8
__imp__wcsset:
	.quad 0
	.section .rdata, "dr"
__imp__wcsset_name:
	.ascii "_wcsset"
	.section .rdata$imp.msvcrt.dll._wcsset, "dr"
	.align 8
	.quad __imp__wcsset_name, __imp__wcsset
#elif __i386__
	.section .data$msvcrt.dll.iat._wcsset, "w"
	.align 4
	.globl __imp___wcsset
__imp___wcsset:
	.long 0
	.section .rdata, "dr"
__imp___wcsset_name:
	.ascii "_wcsset"
	.section .rdata$imp.msvcrt.dll._wcsset, "dr"
	.align 4
	.long __imp__wcsset__name, __imp___wcsset
#else
#error "Unknown target"
#endif
