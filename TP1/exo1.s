# 5f442ef3-db47-4870-850b-46cf4f628e98 
.text
ld n
sub one
st n
boucle:
ld first
add second
st somme
ld second
st first
ld somme
st second
ld n
sub one
st n
brnz boucle
ld somme
stop

.data
n: 5
first: 0
second: 1
somme: 0
one: 1