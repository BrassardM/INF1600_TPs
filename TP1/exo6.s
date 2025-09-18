# a17c33fc-e19a-4732-9df8-b5c605d6bl53
.text
lda adr
ld zero
sti
adda one
ld one
sti
adda one
sti

ld n
sub three
st n

loop:
lda adr
ld zero
add two
add three
sti

adda one
sta adr

ld n
sub one
st n

brnz loop
stop

.data
n: 4
adr: 29 # <- À modifier
zero: 0
one: 1
two: 2
three: 3