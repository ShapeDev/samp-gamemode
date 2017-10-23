#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect Player_OnPlayerConnect
forward Player_OnPlayerConnect(playerid);