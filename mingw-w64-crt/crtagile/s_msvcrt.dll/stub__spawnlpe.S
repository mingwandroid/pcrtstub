/* This file was generated by the genagiledll tool. */
/* Written by Kai Tietz and Ray Donnelly 2014, 2015 */

	.file "stub__spawnlpe.S"
	.text
#ifdef __x86_64__
	.globl _spawnlpe
_spawnlpe:
	jmp *__imp__spawnlpe(%rip)
#elif __i386__
	.globl __spawnlpe
__spawnlpe:
	jmp *__imp___spawnlpe
#else
#error "Unknown target"
#endif
