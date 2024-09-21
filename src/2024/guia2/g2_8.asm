.text
    li t0,0x12345678    # a = 0x12345678
    add t1,t0,zero      # b = a
    addi t0,t0,1        # a = a+1
    addi t0,t0,2        # a = a+2

    li t0,0x00000003    # a
    li t1,0x00000004    # b
    li t3,0x00000005    # c
    li t4,0x00000006    # d
    li t5,0x00000007    # e

    add t0,t1,t2
    div t4,t4,t5
    mul t0,t0,t4