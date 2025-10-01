# 1642cd11-e57b-4d23-ba61-2bfc0bea7506 
.data
tableau:
.int 2, 4, 0, 100, 4, 11, 2602, 36

n: 
.int 8

format_single_number:
.asciz "%d\n"

format_sentence:
.asciz "Vous pouvez modifier la phrase et le nombre de variables: %d\n"

.text
.globl main

main:
# prologue (cours 5)        # (ne pas modifier les 2 prochaines lignes)
push    %ebp
mov     %esp,%ebp

# Votre code ici (cette ligne peut etre enlevee)

# epilogue (cours 5)        # (ne pas modifier les 3 prochaines lignes)
movl $0, %eax               # valeur de retour (0 = OK)
leave
ret
