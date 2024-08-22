.text
    lui a1, 0x10010
    lw t0, 0(a1)
    lw t1, 4(a1)
    lw t2, 8(a1)

# 0(a1) es el valor de la direccion almacenada en a1 
# 4(a1) es el valor de de la siguiente direccion almacenada en a1
# 8(a1) es el valor de la 2nda direccion luego de la almacenada en a1