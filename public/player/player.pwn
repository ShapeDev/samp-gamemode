#if defined _player_loaded
	#endinput
#endif

#define _player_loaded

#include "player/player_variables.inc"
#include "player/api/api_Load.inc"
#include "player/player_login.pwn"
#include "player/player_register.pwn"

public OnPlayerConnect(playerid)
{
	player_orm = orm_create("accounts");

	orm_addvar_string(player_orm,player_data[playerid][Nickname],24,"Nickname");
	orm_addvar_string(player_orm,player_data[playerid][Password],64 + 1,"Password");
	orm_addvar_string(player_orm,player_data[playerid][Email],70 + 1,"Email");

	orm_addvar_int(player_orm,player_data[playerid][Gender],"Gender");
	orm_addvar_int(player_orm,player_data[playerid][ID],"ID");

	GetPlayerName(playerid,player_data[playerid][Nickname],MAX_PLAYER_NAME);

	orm_setkey(player_orm,"Nickname");
	orm_load(player_orm,"OnPlayerDataLoad","d",playerid);
}

function OnPlayerDataLoad(playerid)
{
	GetPlayerName(playerid,player_data[playerid][Nickname],MAX_PLAYER_NAME);
	switch(orm_errno(player_orm))
	{
		case ERROR_NO_DATA:
		{
			orm_setkey(player_orm,"ID");
			api_SetConnectMenu(playerid,0,1);
		}
		case ERROR_OK:
		{
			api_SetConnectMenu(playerid,1);
		}
		default:
		{
			Kick(playerid);
		}
	}
}