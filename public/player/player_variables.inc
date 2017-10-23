enum PlayerData
{
	ID,
	Nickname[MAX_PLAYER_NAME + 1],
	Password[64 + 1],
	Email[70 + 1],
	Gender,
	ORM:orm,
	bool:Logged
}
new player_data[MAX_PLAYERS][PlayerData];
#define player_orm player_data[playerid][orm]
forward OnPlayerDataLoad(playerid);