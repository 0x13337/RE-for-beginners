include(`commons.m4')xor	esi, 011223344h	; _LANG(`�����',`garbage')
add	esi, eax	; _LANG(`�����',`garbage')
add	eax, ebx
mov	edx, eax	; _LANG(`�����',`garbage')
shl	edx, 4		; _LANG(`�����',`garbage')
mul	ecx
xor	esi, ecx	; _LANG(`�����',`garbage')
