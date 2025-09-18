<<<<<<< HEAD
# fa265336-9f76-4327-9c50-d735b288bdb1
=======
# 5f442ef3-db47-4870-850b-46cf4f628e98 
>>>>>>> exo3
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