# 19f1a60d-862a-4f3b-bc52-c286328d28b1
.text
boucle: 
ld i
add one
st i

lda adr
add one
mul i
shr
sti

adda one
sta adr

ld n
sub one
st n
brnz boucle

ld adr
sub i
stop

.data
n: 4
i: 0
adr: 24 # <- Droit de modifier
one: 1a