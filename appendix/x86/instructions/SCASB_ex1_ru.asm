lea     edi, string
mov     ecx, 0FFFFFFFFh ; ����������� 2^32-1 ����, �.�., ����� "����������"
xor     eax, eax        ; ����� ������ ��� 0
repne scasb
add     edi, 0FFFFFFFFh ; ���������������

; ������ EDI ��������� �� ��������� ������ � ASCIIZ-������.

; ������ ����� ������
; ������ ECX = -1-strlen

not     ecx
dec     ecx

; ������ � ECX �������� ����� ������
