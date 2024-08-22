.text
lui a1, 0x10010 	#digo que a1 meta esta direccion
lw t0, 0(a1) 	#digo que lea lo que tiene cargada la direccion que tiene a1
lw t1, 4(a1) 	#digo que lea lo que tiene cargada la direccion que tiene a1+4
lw t2, 8(a1) 	#digo que lea lo que tiene cargada la direccion que tiene a1+8
