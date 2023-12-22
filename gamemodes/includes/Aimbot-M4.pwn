#include <YSI\y_hooks>

// Anti Aimbot-M4
new SpeedM4[MAX_PLAYERS] = 0;

hook OnPlayerConnect(playerid)
{
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid)
{
	if (damagedid == INVALID_PLAYER_ID) return 1; // nguoi chiu damage
	if (playerid == INVALID_PLAYER_ID) return 1; // nguoi gay damage

	if(GetPlayerWeapon(playerid) == 31)
	{
		new Float:Pos[3];
		GetPlayerPos(damagedid, Pos[0], Pos[1], Pos[2]);
		
	    if(IsPlayerInRangeOfPoint(playerid, 8, Pos[0], Pos[1] , Pos[2])
	    {
	    	SetTimerEx("AimM4", 1000, false, "i", playerid);
	    }
	    
	}
	return 1;
}

forward AimM4(playerid, damagedid);
hook AimM4(playerid, damagedid)
{
	new Float:health;
 	GetPlayerHealth(playerid, health);
 	
 	if(health >= 100)
 	{
 	    return 1;
 	}
 	else{
 	    new szMessage[1280];
		format(szMessage, sizeof(szMessage), "[Aimbot-M4] Nguoi choi (%s) dang su dung Aimbot-M4.", GetPlayerNameEx(playerid));
		ABroadCast(COLOR_YELLOW, szMessage, 2);
 	}
    return 1;
}
