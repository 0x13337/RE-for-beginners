include(`commons.m4')mov	esi, 1
...	; _LANG(`�����-�� �� ��������� ESI ���',`some code not touching ESI')
dec	esi
...	; _LANG(`�����-�� �� ��������� ESI ���',`some code not touching ESI')
cmp	esi, 0
jz	real_code
; _LANG(`��������� �����',`fake luggage')
real_code:
