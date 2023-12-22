#include <YSI\y_hooks>

CMD:dkmobile(playerid, params[])
{
    SetCameraBehindPlayer(playerid);
	SetPlayerVirtualWorld(playerid, 0);
	
	PlayerHasNationSelected[playerid] = 1;
    TextDrawHideForPlayer(playerid,txtNationSelHelper);
	TextDrawHideForPlayer(playerid,txtNationSelMain);
	TextDrawHideForPlayer(playerid,txtSanAndreas);
	TextDrawHideForPlayer(playerid,txtTierraRobada);
	RegistrationStep[playerid] = 0;
    PlayerInfo[playerid][pTut] = 1;
	gOoc[playerid] = 0; gNews[playerid] = 0; gFam[playerid] = 0;
	TogglePlayerControllable(playerid, 1);
	SetCamBack(playerid);
	DeletePVar(playerid, "MedicBill");
	SetPlayerColor(playerid,TEAM_HIT_COLOR);
	SetPlayerInterior(playerid,0);
	
	new rand=random(312);
	PlayerInfo[playerid][pModel] = rand;
	SetPlayerSkin(playerid, rand);
	
	PlayerInfo[playerid][pNewbieVRP] = 1;
	PlayerInfo[playerid][pQuaTrucker] = 0;
	PlayerInfo[playerid][pQuaPizza] = 0;
	PlayerInfo[playerid][pGiayPhep] = 0;
	PlayerInfo[playerid][pCMND] = 0;
	PlayerInfo[playerid][pSat] = 0;
	PlayerInfo[playerid][pVE] = 0;
	
	strcpy(PlayerInfo[playerid][pBirthDate], "2002-04-30", 64);
	
	PlayerInfo[playerid][pSex] = 1;

	SetCameraBehindPlayer(playerid);
	SetPlayerVirtualWorld(playerid, 0);
	SendClientMessage(playerid, COLOR_WHITE, "Neu ban la newbie : /timvieclam , /baocao , /yeucautrogiup , /phieucuatoi , /chinhxe , /dichvu taxi.");
    SendClientMessage(playerid, COLOR_WHITE, "{3399FF}Luat Server.");
    SendClientMessage(playerid, COLOR_WHITE, "+Nhung Tuyet Doi Cam Truong Hop Hacking,Lam Dung Bug(Neu Vi Pham : {AA3333}Banned Vinh Vien)");
    SendClientMessage(playerid, COLOR_WHITE, "+Khong Duoc Lam Dung Clone De Lay Loi Ich (Vi Pham :{AA3333} Banned Vinh Vien).");
    //SendClientMessage(playerid, COLOR_WHITE, "+Trong Khu An Toan,Khong Duoc CR/BK,Xit Nuoc,NJ (Vi Pham :{AA3333} Jail 30 Phut).");
    SendClientMessage(playerid, COLOR_WHITE, "Chuc Ban Vui Ve.Cam On Ban Da Tham Gia Server.");
    
    SetPlayerPos(playerid, -1488.2419,175.9587,3.3706);
	SetPlayerFacingAngle(playerid, 134.4648);
	return 1;
}

hook OnPlayerConnect(playerid)
{
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

hook OnPlayerSpawn(playerid)
{
	return 1;
}


hook OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}


hook OnPlayerUpdate(playerid)
{
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

hook OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
