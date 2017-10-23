#if defined _core_loaded
	#endinput
#endif
#if !defined _configuration_loaded
	#error Include configuration
#endif

#define _core_loaded

#include "system/core/system_core.inc"

public Core_OnGameModeInit()
{
	connect = mysql_connect_file(MYSQL_FILE);
	SendRconCommand("hostname " #HOSTNAME);
	SetGameModeText(GAMEMODE #" v" #VERSION);
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
}