DialogResponse:DialogRegister(playerid,response,listitem,inputtext[])
{
	#pragma unused listitem
	if(response)
	{
		if(strlen(inputtext) < 4) return api_SetConnectMenu(playerid,0,1);
		strmid(player_data[playerid][Password],inputtext,0,strlen(inputtext));
		api_SetConnectMenu(playerid,0,2);
	} else {
		Kick(playerid);
	}
	return 1;
}

DialogResponse:DialogEmail(playerid,response,listitem,inputtext[])
{
	#pragma unused listitem
	if(response)
	{
		if(strlen(inputtext) < 4) return api_SetConnectMenu(playerid,0,2);
		strmid(player_data[playerid][Email],inputtext,0,strlen(inputtext));
		api_SetConnectMenu(playerid,0,3);
	} else {
		Kick(playerid);
	}
	return 1;
}

DialogResponse:DialogGender(playerid,response,listitem,inputtext[])
{
	#pragma unused listitem
	#pragma unused inputtext
	if(response)
	{
		player_data[playerid][Gender] = response;
		api_RegisterPlayer(playerid);
	} else {
		Kick(playerid);
	}
	return 1;
}