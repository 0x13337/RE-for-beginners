                public f
f               proc near

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    ebp
                fld     ds:dbl_8048608 ; 3.14

; ��������� ����� ������: ST(0) = 3.13

                mov     ebp, esp
                fdivr   [ebp+arg_0]

; ��������� ����� ������: ST(0) = ��������� �������

                fld     ds:dbl_8048610 ; 4.1

; ��������� ����� ������: ST(0) = 4.1, ST(1) = ��������� �������

                fmul    [ebp+arg_8]

; ��������� ����� ������: ST(0) = ��������� ���������, ST(1) = ��������� �������

                pop     ebp
                faddp   st(1), st

; ��������� ����� ������: ST(0) = ��������� ��������

                retn
f               endp
