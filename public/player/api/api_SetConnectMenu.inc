stock api_SetConnectMenu(playerid, data = 0, step = 1)
{
	switch(data)
	{
		case 0:
		{
			switch(step)
			{
				case 1:
				{
					ShowPlayerDialogEx(playerid,"DialogRegister",DIALOG_STYLE_INPUT,"�����������","����� ���������� ��" #HOSTNAME #"\n ���� ������� ��������\n ��� ����������� ������� ������:", "�����","������");
				}
				case 2:
				{
					ShowPlayerDialogEx(playerid,"DialogEmail",DIALOG_STYLE_INPUT,"����������� | E-Mail","������� ��� E-Mail ��� ���� \n����� � ���������� ������������ �������","�����","������");
				}
				case 3:
				{
					ShowPlayerDialogEx(playerid,"DialogGender",DIALOG_STYLE_MSGBOX,"����������� | ���","�������� ��� ���","�������","�������");
				}
			}
		}
		case 1:
		{
			ShowPlayerDialogEx(playerid,"DialogLogin",DIALOG_STYLE_INPUT,"�����������","����� ���������� �� " #HOSTNAME #"\n ������ ������� ��� ���������������\n ������� ������:","����","�����");
		}
		default:
		{
			Kick(playerid);
		}
	}
	return 1;
}