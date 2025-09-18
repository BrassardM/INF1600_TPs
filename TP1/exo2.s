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