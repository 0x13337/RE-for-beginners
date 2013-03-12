PUBLIC    _d_max
_TEXT    SEGMENT
_a$ = 8            ; size = 8
_b$ = 16           ; size = 8
_d_max     PROC
    push   ebp
    mov    ebp, esp
    fld    QWORD PTR _b$[ebp]

; ��������� ����� ������: ST(0) = _b
; ���������� _b (� ST(0)) � _a, ����� ����������� �������� �� �����

    fcomp  QWORD PTR _a$[ebp]

; ���� ������ ������

    fnstsw ax
    test   ah, 5
    jp     SHORT $LN1@d_max

; we are here if a>b

    fld    QWORD PTR _a$[ebp]
    jmp    SHORT $LN2@d_max
$LN1@d_max:
    fld    QWORD PTR _b$[ebp]
$LN2@d_max:
    pop    ebp
    ret    0
_d_max     ENDP
