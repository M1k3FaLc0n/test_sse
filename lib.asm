global addition
global substraction
global sse_or
global sse_and
global sse_xor

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

sse_or:
    push ebx
    mov ebx,[esp + 12]
    movdqu xmm1,[ebx]
    mov ebx,[esp + 8]
    movdqu xmm0,[ebx]
    por xmm0,xmm1
    movdqu [ebx],xmm0
    pop ebx
ret

sse_xor:
    push ebx
    mov ebx,[esp + 12]
    movdqu xmm1,[ebx]
    mov ebx,[esp + 8]
    movdqu xmm0,[ebx]
    pxor xmm0,xmm1
    movdqu [ebx],xmm0
    pop ebx
ret

sse_and:
    push ebx
    mov ebx,[esp + 12]
    movdqu xmm1,[ebx]
    mov ebx,[esp + 8]
    movdqu xmm0,[ebx]
    pand xmm0,xmm1
    movdqu [ebx],xmm0
    pop ebx
ret