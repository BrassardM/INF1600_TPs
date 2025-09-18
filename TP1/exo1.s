# 47ffe27e-3765-4024-9c85-1fac1395893e
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