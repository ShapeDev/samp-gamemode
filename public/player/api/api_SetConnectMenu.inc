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
					ShowPlayerDialogEx(playerid,"DialogRegister",DIALOG_STYLE_INPUT,"Регистрация","Добро пожаловать на" #HOSTNAME #"\n Этот аккаунт свободен\n Для регистрации введите пароль:", "Далее","Отмена");
				}
				case 2:
				{
					ShowPlayerDialogEx(playerid,"DialogEmail",DIALOG_STYLE_INPUT,"Регистрация | E-Mail","Введите ваш E-Mail для того \nчтобы в дальнейшем восстановить аккаунт","Далее","Отмена");
				}
				case 3:
				{
					ShowPlayerDialogEx(playerid,"DialogGender",DIALOG_STYLE_MSGBOX,"Регистрация | Пол","Выберите ваш пол","Мужской","Женский");
				}
			}
		}
		case 1:
		{
			ShowPlayerDialogEx(playerid,"DialogLogin",DIALOG_STYLE_INPUT,"Авторизация","Добро пожаловать на " #HOSTNAME #"\n Данный аккаунт уже зарегистрирован\n Введите пароль:","Вход","Выход");
		}
		default:
		{
			Kick(playerid);
		}
	}
	return 1;
}