# Desarrolla una subrutina que determine cuántos elementos de un vector de
# enteros son pares (múltiplos de 2). La subrutina debe recibir como parámetros el
# vector y su dimensión y devolver el número de elementos pares.

.data
v: .word 3, 2, 4, 56, 43, 327, 400
.text
main:
    la t0, v         # Carga la dirección de memoria del vector
    li s0, 0         # Inicializa un contador en 0
    li s1, 7         # Carga la cantidad total de elementos
    li a0, 2         # Carga el valor por el que se quiere dividir
    j loop
compare:
    beq a3,zero,found
    j loop
move:
    addi t0,t0,4
    addi s1,s1,-1
    jr ra
found:
    addi s0,s0,1
    j loop
loop:
    lw a1, 0(t0)     # Cargar el valor actual
    rem a3,a1,a0     # Hago el remanente
    jal move
    bge s1,zero,compare