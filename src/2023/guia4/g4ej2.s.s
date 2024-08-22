.text
li a0,0x0000000a
li s1,0x00000002
li s2,0x00000001
bne a0,zero,multiplicar
nop
multiplicar:
add s3,s3,s1
sub a0,a0,s2
j checkear
checkear:
bne a0,zero,multiplicar