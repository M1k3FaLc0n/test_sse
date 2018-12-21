global addition
global substraction

section .text
addition:
    push ebx
    mov ebx,[esp + 12]
    movdqu xmm0,[ebx]
    mov ebx,[esp + 8]
    movdqu xmm1,[ebx]
    addps xmm0,xmm1
    movdqu [ebx],xmm0
    pop ebx
ret

substraction:
    push ebx
    mov ebx,[esp + 12]
    movdqu xmm1,[ebx]
    mov ebx,[esp + 8]
    movdqu xmm0,[ebx]
    subps xmm0,xmm1
    movdqu [ebx],xmm0
    pop ebx
ret