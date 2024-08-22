.data
valor: .word 0

.text
lui t0, 0x12345	#le encaja a t0 0x123450000
lui t1, 0x345	#le encaja a t1 0x003450000
lui t2, 0x5		#le encaja a t2 0x000050000
sw t0, valor, t6	#encaja una palabra en t0 
la a7, valor
sw t1, 4(a7)
sw t2, 8(a7)
