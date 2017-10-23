function api_RegisterPlayer(playerid)
{
	player_data[playerid][Logged] = true;
	orm_insert(player_orm,"","","");
	orm_update(player_orm);
	SpawnPlayer(playerid);
}