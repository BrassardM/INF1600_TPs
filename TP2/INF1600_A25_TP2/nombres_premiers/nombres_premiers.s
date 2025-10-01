# 78a7ffae-3e84-49c6-99ed-8968803fecdc
.data
n:
.int 7

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
