do_filp_open    proc near
...
                push    ebp
                mov     ebp, esp
                push    edi
                push    esi
                push    ebx
                mov     ebx, ecx
                add     ebx, 1
                sub     esp, 98h
                mov     esi, [ebp+arg_4] ; acc_mode (����� ��������)
                test    bl, 3
                mov     [ebp+var_80], eax ; dfd (������ ��������)
                mov     [ebp+var_7C], edx ; pathname (������ ��������)
                mov     [ebp+var_78], ecx ; open_flag (������ ��������)
                jnz     short loc_C01EF684
                mov     ebx, ecx        ; EBX <- open_flag
