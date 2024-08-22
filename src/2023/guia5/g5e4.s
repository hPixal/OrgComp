# Implementa una subrutina que determine la longitud de una cadena de caracteres
# que finalice con el caracter nulo (‘\0)’. Luego utilícela en un programa cliente que
# tenga dos cadenas y determine cuál es más larga, devolviendo 1 o 2 en s1

.data
    .align 2     # Alineamiento a 4 bytes
C0: .asciz "hol"
    .align 2     # Alineamiento a 4 bytes
C1: .asciz "hola"

.text
j main
ecall
bt0: 
    li s1,1
    j fin
t0t1eq:
    li s1,2
    j fin
main:
    la a0, C0      # Cargo la direccion de C0 en a0
    la a1, C1      # Cargo la direccion de C1 en a1
    lw t0,0(a0)    # Cargo el primer valor de C0 en t0
    lw t1,0(a1)    # Cargo el primer valor de C1 en t1
    li s1,0
    beq t0,t1,t0t1eq
    bge t0,t1,bt0
    j fin
fin:
    nop

    