DialogResponse:DialogLogin(playerid,response,listitem,inputtext[])
{
	#pragma unused listitem
	if(response)
	{
		if(strcmp(inputtext,player_data[playerid][Password]) == 0)
		{
			api_LoginPlayer(playerid);
		} else {
			api_SetConnectMenu(playerid,1);
		}
	} else {
		Kick(playerid);
	}
	return 1;
}