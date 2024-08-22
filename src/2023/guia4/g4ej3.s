.text
# Inicializa a0 con 0 para almacenar el resultado
li a0, 0
li s0, 2
li s1, 1


# Inicializa t2 con el valor de 11
li t2, 11
li t4, 11

# Utiliza un ciclo para realizar la multiplicación
li t3, 31  # Inicializa el contador con el valor 32 (el bit más significativo de 61)
j mul_loop
nop
mul_loop:
div t4,t4,s0
bne t4,zero,shift
rem t4,t2,s0
bne t4,zero,rmpart

shift:
slli t3,t3,1
j mul_loop
rmpart:
add t3,t3,t3
sub t4,t4,s1
bne t4,zero,rmpart
