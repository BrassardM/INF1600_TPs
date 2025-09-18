# d4a451c7-8bfa-43b7-865a-feb9ce7aab29
# Capacité mémoire :  64 octets
# Justification : Nous utilisons 32 places de mémoires qui utilisent chacuns 16 bits. Donc nous avons 16*32 bits, ce qui donne 512 bits. 512 bits équivaut à 64 octets (512/8).
.text
ld n
add inc
mul n
shr
st max
ld n
add curradr
st adrmax
loop:
lda curradr
ld result
addx
st result
adda inc
sta curradr
suba adrmax
sta n
ld n
brnz loop
ld max
sub result
st result
stop
.data
#nums
a: 4
b: 0
c: 3
d: 5
e: 1

n: 5 #elements
max: 0
curradr: 22
adrmax: 0
inc: 1
result: 0