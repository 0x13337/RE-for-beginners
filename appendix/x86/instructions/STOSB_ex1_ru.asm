; �������� 15 ���� 0xAA � EDI
CLD                 ; ���������� ����������� �� "������"
MOV EAX, 0AAAAAAAAh
MOV ECX, 3
REP STOSD           ; �������� 12 ����
STOSW               ; �������� ��� 2 �����
STOSB               ; �������� ���������� ����
