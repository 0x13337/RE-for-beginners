_str$ = 8                        ; size = 4
_strlen PROC
    mov    ecx, DWORD PTR _str$[esp-4] ; ECX -> ��������� �� ������
    mov    eax, ecx                    ; ���������� � EAX
$LL2@strlen_:
    mov    dl, BYTE PTR [eax]          ; DL = *EAX
    inc    eax                         ; EAX++
    test   dl, dl                      ; DL==0?
    jne    SHORT $LL2@strlen_          ; ���, ���������� ����
    sub    eax, ecx                    ; ��������� ������� ����������
    dec    eax                         ; ��������� EAX
    ret    0
_strlen_ ENDP
