#  Desarrolle una subrutina que determine el promedio de los elementos de un
# vector de enteros de cualquier dimensión se pasa la dirección del vector y su
# tamaño.

.data
    v: .word 11,2,3,4,5,6,7,8,9,10
    t: .word 10
.text
main:
    la t0,v
    la t1,t
    lw t1,0,t1       # Obtengo el tamaño
    add s0,zero,zero # Inicio el acumulador
    add s1,zero,zero # Inicio el contador
loop:
    lw s2,0,t0
    addi t0,t0,4
    addi s1,s1,1
    add s0,s2,s0
    bge s1,t1,end
    j loop
end:
    rem s1,s0,t1
    div s2,s0,t1
    nop
        