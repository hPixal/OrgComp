.text 
	lui t0, 0x12345 	#Le encajo a t0 0x123450000
	sw t0, (sp)		#
	lui a1, 0x10010
	sw t1, (a1)
	li a7, 10
	ecall
