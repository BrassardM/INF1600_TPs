# 3fb69c58-b7ec-4659-aa24-1802dad471f9 
.data
phrase:
.asciz "le ciel est bleu"

s:
.asciz "bleu"

format_sentence:
.asciz "index de la sous chaine: %d\n"

.text
.globl main

main:
# prologue (cours 5)        # (ne pas modifier les 2 prochaines lignes)
push    %ebp
mov     %esp,%ebp

# Votre code ici (cette ligne peut etre enlevee)
findinit:
movl $phrase,%esi
movl $s,%edi
movb (%edi),%bl  

findloop:
movb (%esi), %al            # if the null terminator
cmpb $0, %al
je printnot
cmp %al, %bl
jne resetss

nextssletter:
addl $1, %edi
movb (%edi), %bl
cmpb $0, %bl
je printin                  # only happends when the whole substring is read in the string
jmp nextiterprep

resetss:
movl $s,%edi
movl %esi, %edx
movb (%edi),%bl

nextiterprep:  
addl $1, %esi
jmp findloop

printin:
subl $phrase, %edx
pushl %edx
pushl $format_sentence
call printf
jmp end

printnot:
pushl $-1
pushl $format_sentence
call printf
end:
# epilogue (cours 5)        # (ne pas modifier les 3 prochaines lignes)
movl $0, %eax               # valeur de retour (0 = OK)
leave
ret
