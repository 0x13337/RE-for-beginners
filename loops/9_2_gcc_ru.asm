                public main
main            proc near

var_20          = dword ptr -20h

                push    ebp
                mov     ebp, esp
                and     esp, 0FFFFFFF0h
                push    ebx
                mov     ebx, 2                ; i=2
                sub     esp, 1Ch

; ������������ ����� loc_80484D0 (������ ���� �����) �� 16-������� �������
                nop                           

loc_80484D0:
                mov     [esp+20h+var_20], ebx ; �������� i ��� ������ �������� ��� f()
                add     ebx, 1   ; i++
                call    f
                cmp     ebx, 64h ; i==100?
                jnz     short loc_80484D0 ; ���� ���, ����������
                add     esp, 1Ch
                xor     eax, eax ; ������� 0
                pop     ebx
                mov     esp, ebp
                pop     ebp
                retn
main            endp
