//* This file was generated by the genagiledll tool. *//
//* Written by Kai Tietz and Ray Donnelly 2014, 2015 *//

	.file "imp__set_invalid_parameter_handler.S"
#ifdef __x86_64__
	.section .data$msvcrt.dll.iat._set_invalid_parameter_handler,"w"
	.globl __imp__set_invalid_parameter_handler
	.align 8
__imp__set_invalid_parameter_handler:
	.quad mingw_set_invalid_parameter_handler
	.section .rdata, "dr"
__imp__set_invalid_parameter_handler_name:
	.ascii "_set_invalid_parameter_handler"
	.section .rdata$imp.msvcrt.dll._set_invalid_parameter_handler, "dr"
	.align 8
	.quad __imp__set_invalid_parameter_handler_name, __imp__set_invalid_parameter_handler
#elif __i386__
	.section .data$msvcrt.dll.iat._set_invalid_parameter_handler, "w"
	.align 4
	.globl __imp___set_invalid_parameter_handler
__imp___set_invalid_parameter_handler:
	.long _mingw_set_invalid_parameter_handler
	.section .rdata, "dr"
__imp___set_invalid_parameter_handler_name:
	.ascii "_set_invalid_parameter_handler"
	.section .rdata$imp.msvcrt.dll._set_invalid_parameter_handler, "dr"
	.align 4
	.long __imp__set_invalid_parameter_handler__name, __imp___set_invalid_parameter_handler
#else
#error "Unknown target"
#endif
