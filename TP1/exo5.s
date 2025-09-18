# 9d8bc382-0d75-40e1-9564-1b27774289e1 
.text
ld n
br first
removeone:
ld index
st lastone
ld n
sub lastbit
st n
ld result
add one
st result
main:
ld index
add one
st index
ld lastbit
shl
st lastbit
ld topbit
shr
st topbit
sub negone
brz end
ld n
first:
mul topbit
brnz removeone
br main
end:
ld lastone
sub result
st result
stop
.data
n: 11
totalindex: 16
negone: 65535
topbit: 32768
lastbit: 1
one: 1
result: 0
lastone: 0
index: 1