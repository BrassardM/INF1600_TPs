# 1642cd11-e57b-4d23-ba61-2bfc0bea7506 
.data
tableau:
.int 2, 4, 0, 100, 4, 11, 2602, 36

n: 
.int 8

format_single_number:
.asciz "%d\n"

format_sentence:
.asciz "Le nombre atypique est : %d\n"

.text
.globl main

main:
# prologue (cours 5)        # (ne pas modifier les 2 prochaines lignes)
push    %ebp
mov     %esp,%ebp

# Votre code ici (cette ligne peut etre enlevee)

#check if table is odd or even
checkfirst:
movl $tableau, %edx
movl (%edx), %eax
andl $1, %eax
movl %eax, %ebx
addl $4, %edx
checksecond:
movl (%edx), %eax
andl $1, %eax
cmpl %eax, %ebx
jne checkthird
checkeq:
jmp findinit
checkthird:
addl $4, %edx
movl (%edx), %eax
andl $1, %eax
movl %eax, %ebx

findinit:
movl n, %ecx
movl $tableau, %edx
findloop:
movl (%edx), %eax
andl $1, %eax
cmpl %eax, %ebx
jne print
addl $4, %edx
loop findloop


print:
pushl (%edx)
pushl $format_sentence
call printf

# epilogue (cours 5)        # (ne pas modifier les 3 prochaines lignes)
movl $0, %eax               # valeur de retour (0 = OK)
leave
ret
