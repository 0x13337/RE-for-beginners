lea     edi, string
mov     ecx, 0FFFFFFFFh ; ����������� ����������
xor     eax, eax        ; ����� ������ ��� 0
repne scasb
add     edi, 0FFFFFFFFh ; ���������������

; ������ EDI ��������� �� ��������� ������ � ASCIIZ-������.

; ������ ����� ������
; ECX = -strlen-2

not     ecx
dec     ecx

; ������ � ECX �������� ����� ������
