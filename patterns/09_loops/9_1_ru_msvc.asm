_i$ = -4
_main    PROC
    push   ebp
    mov    ebp, esp
    push   ecx
    mov    DWORD PTR _i$[ebp], 2   ; ������������� �����
    jmp    SHORT $LN3@main
$LN2@main:
    mov    eax, DWORD PTR _i$[ebp] ; �� ��� �� ������ ����� ������ ��������:
    add    eax, 1                  ; ��������� 1 � i
    mov    DWORD PTR _i$[ebp], eax
$LN3@main:
    cmp    DWORD PTR _i$[ebp], 10  ; ��� ������� ����������� *�����* ������ ���������
    jge    SHORT $LN1@main         ; ���� i ������ ��� ����� 10, ����������� ����
    mov    ecx, DWORD PTR _i$[ebp] ; ���� �����: ����� ������� f(i)
    push   ecx
    call   _f
    add    esp, 4
    jmp    SHORT $LN2@main         ; ������� �� ������ �����
$LN1@main:                         ; ����� �����
    xor    eax, eax
    mov    esp, ebp
    pop    ebp
    ret    0
_main    ENDP
