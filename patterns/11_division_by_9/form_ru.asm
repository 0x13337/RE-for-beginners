	mov	eax, MAGICAL CONSTANT
	imul	input value
	sar	edx, SHIFTING COEFFICIENT ; �������� ������� �� 2^x ��� ������ ��������������� ������ ������
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
