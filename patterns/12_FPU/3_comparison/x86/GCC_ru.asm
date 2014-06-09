d_max proc near

b               = qword ptr -10h
a               = qword ptr -8
a_first_half    = dword ptr  8
a_second_half   = dword ptr  0Ch
b_first_half    = dword ptr  10h
b_second_half   = dword ptr  14h

    push    ebp
    mov     ebp, esp
    sub     esp, 10h

; ��������� a � b � ��������� ����:

    mov     eax, [ebp+a_first_half]
    mov     dword ptr [ebp+a], eax
    mov     eax, [ebp+a_second_half]
    mov     dword ptr [ebp+a+4], eax
    mov     eax, [ebp+b_first_half]
    mov     dword ptr [ebp+b], eax
    mov     eax, [ebp+b_second_half]
    mov     dword ptr [ebp+b+4], eax

; ��������� a � b � ���� FPU

    fld     [ebp+a]
    fld     [ebp+b]

; ������� ��������� �����: ST(0) - b; ST(1) - a

    fxch    st(1) ; ��� ���������� ������ ST(1) � ST(0) �������

; ������� ��������� �����: ST(0) - a; ST(1) - b

    fucompp     ; �������� a � b � ��������� �� ����� ��� ��������, �.�., a � b
    fnstsw  ax  ; �������� ������ FPU � AX
    sahf        ; ��������� ��������� ������ SF, ZF, AF, PF, � CF �� AH
    setnbe  al  ; �������� ������� � AL ���� CF=0 � ZF=0
    test    al, al            ; AL==0 ?
    jz      short loc_8048453 ; ��
    fld     [ebp+a]
    jmp     short locret_8048456

loc_8048453:
    fld     [ebp+b]

locret_8048456:
    leave
    retn
d_max endp
