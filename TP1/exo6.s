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
brz end
sub one
brz end
sub one
brz end
st n
st zero

loop:
lda adr
ldi
adda one
addx
adda one
addx
adda one
sti
suba two

sta adr

ld n
sub one
st n

brnz loop

end:
ld adr
sub zero
stop

.data
n: 4
adr: 39 # <- À modifier
zero: 0
one: 1
two: 2
three: 3
