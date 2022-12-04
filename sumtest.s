	.intel_syntax noprefix
	.section .text
	.global _start
_start:
test1:
	xor rax, rax  # rax = 0
	mov QWORD PTR [SUM_POSITIVE], rax  # set SUM_POSITIVE to 0
	mov QWORD PTR [SUM_NEGATIVE], rax  # set SUM_NEGATIVE to 0

	mov rbx, OFFSET data_start         # set rax to address of first integer

	jmp SUM_FRAG
test2:
	jmp SUM_FRAG
test3:
	jmp SUM_FRAG
test4:
	jmp SUM_FRAG

	.section .data
data_start:  # use data_start label to mark beginning of array
	.quad -1  # each element is an 8 byte integer we use .quad directive for each
	.quad 1
	.quad 54644566
	.quad -2233
data_end:
	.quad 0x0
