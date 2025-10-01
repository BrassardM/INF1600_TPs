# 3fb69c58-b7ec-4659-aa24-1802dad471f9 
.data
phrase:
.asciz "le ciel est bleu"

s:
.asciz "bleu"

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
