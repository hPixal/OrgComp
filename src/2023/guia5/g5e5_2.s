# Realice un programa que dado un vector de 10 elementos, invierta
# posicionalmente sus valores
.data
    v:.word 1,2,3,4,5,6,7,8,9,10
    tam: .word 10
.text
    la t0,v
    la t1,tam
    lw t1,0,t1
    add s0,zero,zero     # Iinicializo la variable acumuladora
    add a0,zero,zero     # Inicializo la variable contadora
loop:
    lw t2,0,t0
    add s0,s0,t2
    beq a0,t1,end
move:
    addi t0,t0,4
    addi a0,a0,1
    j loop
end:
    div t0,s0,t1
    nop