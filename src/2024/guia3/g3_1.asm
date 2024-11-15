.text
ori t0, zero, 0x476
ori t1, zero, 0x552
ori t2, zero, 0x22
slt t6, t1, t0
beq t6, zero, no1
slt t6, t2, t0
beq t6, zero, no2
bge t2,t0,no2
or a0, zero, t0
j fin
no2:  or a0, zero, t2
j fin
no1:  slt t6, t2, t1
beq t6, zero, no2
or a0, zero, t1
fin: ori a7, x0, 10
ecall