include(`commons.m4')CPU Stack
Address   Value     
001DFBCC  /001DFBD3 ; _LANG(`��������� fakearray',`fakearray pointer')
001DFBD0  |11223344 ; random_value
001DFBD4  |03020100 ; 4 _LANG(`�����',`bytes of') array[]
001DFBD8  |07060504 ; 4 _LANG(`�����',`bytes of') array[]
001DFBDC  |00CB0908 ; _LANG(`��������� ����� + 2 ��������� �����',`random garbage + 2 last bytes of') array[]
001DFBE0  |0000000A ; _LANG(`��������� �������� i ����� ���� ��� ���������� ����',`last i value after loop was finished')
001DFBE4  |001DFC2C ; _LANG(`����������� �������� EBP',`saved EBP value')
001DFBE8  \00CB129D ; _LANG(`����� �������� (RA)',`Return Address')
