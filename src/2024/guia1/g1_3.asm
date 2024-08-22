.data
    valor: .word 0

.text 
    lui t0, 0x12345
    lui t1, 0x345
    lui t2, 0x5
    sw t0,valor,t6
    la a7, valor
    sw t1, 4(a7)
    sw t2, 8(a7)
