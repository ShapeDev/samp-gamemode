function api_LoginPlayer(playerid)
{
	player_data[playerid][Logged] = true;
	SpawnPlayer(playerid);
}