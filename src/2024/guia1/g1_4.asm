.text
    lui t0,0x12345      # asigna valor
    sw t0,0(sp)         # guarda t0 como palabra en sp con 0 desplazamiento
    lui a1, 0x10010     # asigna a1 como 0x10010
    lw t1,0(sp)         # carga palabra en sp con 0 desplazamiento en t1
    sw t1,0(a1)         # gurda la palabra de t1 en a1 con 0 desplazamiento
    li a7,10
    ecall