# 1642cd11-e57b-4d23-ba61-2bfc0bea7506
.data
dna:
.asciz "ATTGC"

format_sentence:
.asciz "Vous pouvez modifier la phrase et le nombre de variables: %d\n"

.text
.globl main

main:
# prologue (cours 5)        # (ne pas modifier les 2 prochaines lignes)
push    %ebp
mov     %esp,%ebp

# Votre code ici (cette ligne peut etre enlevee)
movl $dna,%edi 

# Iterer sur chaque lettre
charloop:
movb (%edi), %al
cmpb $0, %al
je printseq
cmpb $'A', %al
je ifa
cmpb $'T', %al
je ift
cmpb $'C', %al
je ifc
cmpb $'G', %al
je ifg
jmp end

ifa:
movb $'T', %al
jmp endofifs 

ift:
movb $'A', %al
jmp endofifs

ifc:
movb $'G', %al
jmp endofifs
ifg:
movb $'C', %al

endofifs:
movb %al, (%edi)
incl %edi
jmp charloop


printseq:
pushl $dna
call printf
end:

# epilogue (cours 5)        # (ne pas modifier les 3 prochaines lignes)
movl $0, %eax               # valeur de retour (0 = OK)
leave
ret
