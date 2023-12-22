#define SERVER_GM_TEXT "Project Version 1"

#include <a_samp>
#include <a_mysql>
#include <a_actor>
#include <streamer>
#include <yom_buttons>		
#include <ZCMD>
#include <dini>
#include <easydialog>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <compat>
#include <sampvoice>
#include <DialogCenter> // //c

#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "./includes/Main.pwn"
#include "./includes/Taixiu.pwn"

main() {}

public OnGameModeInit()
{
	print("Dang chuan bi tai gamemode, xin vui long cho doi...");
	g_mysql_Init();
	gstream = SvCreateGStream(0xffff0000, "Global");
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
    if (gstream) SvDeleteStream(gstream);
	return 1;
}

public SV_VOID:OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
    // Attach player to local stream as speaker if 'B' key is pressed
    if (keyid == 0x42 && lstream[playerid]) SvAttachSpeakerToStream(lstream[playerid], playerid);
    // Attach the player to the global stream as a speaker if the 'Z' key is pressed
    if (keyid == 0x5A && gstream) SvAttachSpeakerToStream(gstream, playerid);
}

public SV_VOID:OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
    // Detach the player from the local stream if the 'B' key is released
    if (keyid == 0x42 && lstream[playerid]) SvDetachSpeakerFromStream(lstream[playerid], playerid);
    // Detach the player from the global stream if the 'Z' key is released
    if (keyid == 0x5A && gstream) SvDetachSpeakerFromStream(gstream, playerid);
}
