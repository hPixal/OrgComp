#  Programe una subrutina intercambio que intercambie dos valores pasados por referencia.
.data
    w1: .word 3
    w2: .word 4
.text
    la t1,w1 # Cargo la direccion de w1
    lw s1,w1 # Cargo el valor de w1
    la t2,w2 # Cargo la direccion de w2
    lw s2,w2 # Cargo el valor de w2
# Ahora hago el intercambio
    sw s2,0,t1 # Guardo el el valor de s2 desplazado 0 bytes en t1
    sw s1,0,t2 # Guardo el el valor de s1 desplazado 0 bytes en t2
    lw a1,w1 # Esto es solo para checkear que funciono
    lw a2,w2
    