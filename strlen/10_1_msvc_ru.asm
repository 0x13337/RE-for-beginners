_eos$ = -4                       ; size = 4
_str$ = 8                        ; size = 4
_strlen PROC
    push    ebp
    mov     ebp, esp
    push    ecx
    mov     eax, DWORD PTR _str$[ebp]   ; ����� ��������� �� ������ �� str 
    mov     DWORD PTR _eos$[ebp], eax   ; � ���������� ��� � ���� ��������� ���������� eos
$LN2@strlen_:
    mov     ecx, DWORD PTR _eos$[ebp]   ; ecx=eos
    
    ; ����� ����, �� ������� ��������� ecx � �������� ��� � edx � signed-�����������

    movsx   edx, BYTE PTR [ecx]               
    mov     eax, DWORD PTR _eos$[ebp]   ; eax=eos
    add     eax, 1                      ; ��������� eax �� �������
    mov     DWORD PTR _eos$[ebp], eax   ; �������� eax ����� � eos
    test    edx, edx                    ; edx==0?
    je      SHORT $LN1@strlen_          ; ��, �� ��� ����� � edx ��� ����, ����� �� �����
    jmp     SHORT $LN2@strlen_          ; ���������� ����
$LN1@strlen_:
    
    ; ����� �� ��������� ������� ���� ����������

    mov    eax, DWORD PTR _eos$[ebp]         
    sub    eax, DWORD PTR _str$[ebp]
    sub    eax, 1                       ; �������� �� ������� ��� ������� � ���������� ���������
    mov    esp, ebp
    pop    ebp
    ret    0
_strlen_ ENDP
