#include <YSI\y_hooks>

// LumberJob

new Tree[99];
new CutTree[99][MAX_PLAYERS];
new Text3D:TextTree[99];
new DangDonGo[MAX_PLAYERS];
new CayGo[99][MAX_PLAYERS];

CMD:cuacay(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 27 || PlayerInfo[playerid][pJob2] == 27)
	{
     	/*if(IsAtThoMoc(playerid))
	    {
	        return 1;
	    }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong o noi co cay de khai thac.");*/
	    //------------------------------------//
	    IsAtThoMoc(playerid);
	    //------------------------------------//
	}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban chua nhan cong viec Tho Moc.");
	return 1;
}

stock IsAtThoMoc(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		if(IsPlayerInRangeOfPoint(playerid, 5.0, -1944.50916, 1146.27649, 46.55781)) // 0
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[0][playerid] == 0)
	            {
					if(CutTree[0][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[0][playerid] = 1;
						CutTree[0][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGoTime", time);
						SetTimerEx("DonGo", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
			return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid,5.0, -1931.71521, 1145.93835, 46.05780)) // 1
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[1][playerid] == 0)
	            {
					if(CutTree[1][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[1][playerid] = 1;
						CutTree[1][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo1Time", time);
						SetTimerEx("DonGo1", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1918.90125, 1147.30542, 45.39780)) // 2
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[2][playerid] == 0)
	            {
					if(CutTree[2][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[2][playerid] = 1;
						CutTree[2][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo2Time", time);
						SetTimerEx("DonGo2", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1944.97339, 1135.99084, 47.97780)) // 3
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[3][playerid] == 0)
	            {
					if(CutTree[3][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[3][playerid] = 1;
						CutTree[3][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo3Time", time);
						SetTimerEx("DonGo3", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1931.96802, 1135.70496, 46.31780)) // 4
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[4][playerid] == 0)
	            {
					if(CutTree[4][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[4][playerid] = 1;
						CutTree[4][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo4Time", time);
						SetTimerEx("DonGo4", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1918.96497, 1135.90906, 46.05780)) // 5
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[5][playerid] == 0)
	            {
					if(CutTree[5][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[5][playerid] = 1;
						CutTree[5][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo5Time", time);
						SetTimerEx("DonGo5", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1945.53540, 1124.41785, 49.81780)) // 6
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[6][playerid] == 0)
	            {
					if(CutTree[6][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[6][playerid] = 1;
						CutTree[6][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo6Time", time);
						SetTimerEx("DonGo6", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1931.66492, 1123.85962, 47.69780)) // 7
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[7][playerid] == 0)
	            {
					if(CutTree[7][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[7][playerid] = 1;
						CutTree[7][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo7Time", time);
						SetTimerEx("DonGo7", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1919.00952, 1123.26355, 46.65780)) // 8
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[8][playerid] == 0)
	            {
					if(CutTree[8][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[8][playerid] = 1;
						CutTree[8][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo8Time", time);
						SetTimerEx("DonGo8", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1946.32727, 1110.69958, 51.79780)) // 9
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[9][playerid] == 0)
	            {
					if(CutTree[9][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[9][playerid] = 1;
						CutTree[9][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo9Time", time);
						SetTimerEx("DonGo9", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1932.04419, 1111.09460, 49.15780)) // 10
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[10][playerid] == 0)
	            {
					if(CutTree[10][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[10][playerid] = 1;
						CutTree[10][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo10Time", time);
						SetTimerEx("DonGo10", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1919.35522, 1110.85754, 47.31780)) // 11
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[11][playerid] == 0)
	            {
					if(CutTree[11][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[11][playerid] = 1;
						CutTree[11][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo11Time", time);
						SetTimerEx("DonGo11", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1906.60938, 1147.11414, 44.69780)) // 12
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[12][playerid] == 0)
	            {
					if(CutTree[12][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[12][playerid] = 1;
						CutTree[12][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo12Time", time);
						SetTimerEx("DonGo12", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1907.21753, 1136.50073, 44.45780)) // 13
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[13][playerid] == 0)
	            {
					if(CutTree[13][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[13][playerid] = 1;
						CutTree[13][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo13Time", time);
						SetTimerEx("DonGo13", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1907.32446, 1123.64209, 44.91780)) // 14
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[14][playerid] == 0)
	            {
					if(CutTree[14][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[14][playerid] = 1;
						CutTree[14][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo14Time", time);
						SetTimerEx("DonGo14", 1000, 0, "d", playerid);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1907.80139, 1111.16492, 46.05780)) //15
		{
		    if(DangDonGo[playerid] == 0)
	        {
	            if(CayGo[15][playerid] == 0)
	            {
					if(CutTree[15][playerid] == 0)
					{
			        	DangDonGo[playerid] = 1;
			        	TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
						ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);

						CayGo[15][playerid] = 1;
						CutTree[15][playerid] = 1;

						GivePlayerWeapon(playerid, 9, 60000);

						new time = 30+random(30);
						SetPVarInt(playerid, "DonGo15Time", time);
						SetTimerEx("DonGo15", 1000, 0, "d", playerid);
					}else SendClientMessageEx(playerid, COLOR_GRAD2, "Khong the chat cay nay duoc.");
					//__________________________________________//
				}else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the don go cay nay duoc, hien co nguoi don cay nay roi.");
	        }else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang don go , khong the tiep tuc");
		    return 1;
		}
	}
	return 0;
}

CMD:muamaycua(playerid, params[])
{
	//_____________ UPDATE
	return 1;
}
//____________________________________________________________________________//

forward DonGo(playerid);
public DonGo(playerid)
{
    SetPVarInt(playerid, "DonGoTime", GetPVarInt(playerid, "DonGoTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGoTime"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGoTime") > 0) SetTimerEx("DonGo", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGoTime") <= 0)
    {
        DeletePVar(playerid, "DonGoTime");
        DeletePVar(playerid, "DonGo");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[0]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[0]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo1(playerid);
public DonGo1(playerid)
{
    SetPVarInt(playerid, "DonGo1Time", GetPVarInt(playerid, "DonGo1Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo1Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo1Time") > 0) SetTimerEx("DonGo1", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo1Time") <= 0)
    {
        DeletePVar(playerid, "DonGo1Time");
        DeletePVar(playerid, "DonGo1");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[1]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[1]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo1", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo2(playerid);
public DonGo2(playerid)
{
    SetPVarInt(playerid, "DonGo2Time", GetPVarInt(playerid, "DonGo2Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo2Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo2Time") > 0) SetTimerEx("DonGo2", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo2Time") <= 0)
    {
        DeletePVar(playerid, "DonGo2Time");
        DeletePVar(playerid, "DonGo2");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[2]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[2]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo2", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo3(playerid);
public DonGo3(playerid)
{
    SetPVarInt(playerid, "DonGo3Time", GetPVarInt(playerid, "DonGo3Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo3Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo3Time") > 0) SetTimerEx("DonGo3", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo3Time") <= 0)
    {
        DeletePVar(playerid, "DonGo3Time");
        DeletePVar(playerid, "DonGo3");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[3]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[3]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo3", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo4(playerid);
public DonGo4(playerid)
{
    SetPVarInt(playerid, "DonGo4Time", GetPVarInt(playerid, "DonGo4Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo4Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo4Time") > 0) SetTimerEx("DonGo4", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo4Time") <= 0)
    {
        DeletePVar(playerid, "DonGo4Time");
        DeletePVar(playerid, "DonGo4");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[4]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[4]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo4", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo5(playerid);
public DonGo5(playerid)
{
    SetPVarInt(playerid, "DonGo5Time", GetPVarInt(playerid, "DonGo5Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo5Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo5Time") > 0) SetTimerEx("DonGo5", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo5Time") <= 0)
    {
        DeletePVar(playerid, "DonGo5Time");
        DeletePVar(playerid, "DonGo5");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[5]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[5]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo5", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo6(playerid);
public DonGo6(playerid)
{
    SetPVarInt(playerid, "DonGo6Time", GetPVarInt(playerid, "DonGo6Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo6Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo6Time") > 0) SetTimerEx("DonGo6", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo6Time") <= 0)
    {
        DeletePVar(playerid, "DonGo6Time");
        DeletePVar(playerid, "DonGo6");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[6]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[6]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo6", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo7(playerid);
public DonGo7(playerid)
{
    SetPVarInt(playerid, "DonGo7Time", GetPVarInt(playerid, "DonGo7Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo7Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo7Time") > 0) SetTimerEx("DonGo7", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo7Time") <= 0)
    {
        DeletePVar(playerid, "DonGo7Time");
        DeletePVar(playerid, "DonGo7");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[7]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[7]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo7", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo8(playerid);
public DonGo8(playerid)
{
    SetPVarInt(playerid, "DonGo8Time", GetPVarInt(playerid, "DonGo8Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo8Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo8Time") > 0) SetTimerEx("DonGo8", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo8Time") <= 0)
    {
        DeletePVar(playerid, "DonGo8Time");
        DeletePVar(playerid, "DonGo8");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[8]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[8]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo8", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo9(playerid);
public DonGo9(playerid)
{
    SetPVarInt(playerid, "DonGo9Time", GetPVarInt(playerid, "DonGo9Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo9Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo9Time") > 0) SetTimerEx("DonGo9", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo9Time") <= 0)
    {
        DeletePVar(playerid, "DonGo9Time");
        DeletePVar(playerid, "DonGo9");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[9]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[9]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo9", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo10(playerid);
public DonGo10(playerid)
{
    SetPVarInt(playerid, "DonGo10Time", GetPVarInt(playerid, "DonGo10Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo10Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo10Time") > 0) SetTimerEx("DonGo10", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo10Time") <= 0)
    {
        DeletePVar(playerid, "DonGo10Time");
        DeletePVar(playerid, "DonGo10");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[10]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[10]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo10", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo11(playerid);
public DonGo11(playerid)
{
    SetPVarInt(playerid, "DonGo11Time", GetPVarInt(playerid, "DonGo11Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo11Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo11Time") > 0) SetTimerEx("DonGo11", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo11Time") <= 0)
    {
        DeletePVar(playerid, "DonGo11Time");
        DeletePVar(playerid, "DonGo11");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[11]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[11]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo11", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo12(playerid);
public DonGo12(playerid)
{
    SetPVarInt(playerid, "DonGo12Time", GetPVarInt(playerid, "DonGo12Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo12Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo12Time") > 0) SetTimerEx("DonGo12", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo12Time") <= 0)
    {
        DeletePVar(playerid, "DonGo12Time");
        DeletePVar(playerid, "DonGo12");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[12]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[12]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo12", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo13(playerid);
public DonGo13(playerid)
{
    SetPVarInt(playerid, "DonGo13Time", GetPVarInt(playerid, "DonGo13Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo13Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo13Time") > 0) SetTimerEx("DonGo13", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo13Time") <= 0)
    {
        DeletePVar(playerid, "DonGo13Time");
        DeletePVar(playerid, "DonGo13");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[13]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[13]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo13", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo14(playerid);
public DonGo14(playerid)
{
    SetPVarInt(playerid, "DonGo14Time", GetPVarInt(playerid, "DonGo14Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo14Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo14Time") > 0) SetTimerEx("DonGo14", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo14Time") <= 0)
    {
        DeletePVar(playerid, "DonGo14Time");
        DeletePVar(playerid, "DonGo14");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[14]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[14]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo14", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

forward DonGo15(playerid);
public DonGo15(playerid)
{
    SetPVarInt(playerid, "DonGo15Time", GetPVarInt(playerid, "DonGo15Time")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "DonGo15Time"));
    GameTextForPlayer(playerid, string, 1100, 3);
    SetPlayerArmedWeapon(playerid, WEAPON_CHAINSAW);
	ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
    if(GetPVarInt(playerid, "DonGo15Time") > 0) SetTimerEx("DonGo15", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DonGo15Time") <= 0)
    {
        DeletePVar(playerid, "DonGo15Time");
        DeletePVar(playerid, "DonGo15");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);

        DestroyDynamicObject(Tree[15]);
        DestroyDynamic3DTextLabel(Text3D:TextTree[15]);

        RemovePlayerWeapon(playerid, 9);

        ApplyAnimation(playerid,"PED","IDLE_chat",5.1,0,0,0,1,100);
        SetPlayerAttachedObject(playerid,2, 1458, 1, -1.034844, 1.116571, -0.065124, 76.480148, 75.781570, 280.952545, 0.575599, 0.604554, 0.624122);// ??????
        SetPlayerAttachedObject(playerid,1, 1463, 1, -0.205007, 1.545087, -0.014800, 171.406829, 96.114616, 0.066009, 0.403667, 1.000000, 1.021239 ); // ??????
        SetPlayerCheckpoint(playerid, -1872.7393,1120.5895,45.4453, 5);
        SetPVarInt(playerid, "GiaoGo15", 1);
 	    SendClientMessageEx(playerid, COLOR_ORANGE,"Ban da don go thanh cong, hay giao go toi dia diem tren ban do.");
		return 1;
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
	Tree[0] = CreateObject(655, -1944.50916, 1146.27649, 46.55781, 0.00000, 0.00000, 0.00000); // BASIC
	TextTree[0] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1944.50916, 1146.27649, 46.55781+ 0.6,15.0);

	Tree[1] = CreateObject(655, -1931.71521, 1145.93835, 46.05780,   0.00000, 0.00000, 0.00000); // 1
	TextTree[1] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.71521, 1145.93835, 46.05780+ 0.6,15.0);

	Tree[2] = CreateObject(655, -1919.17871, 1146.21838, 45.43780,   0.00000, 0.00000, 0.00000); // 2
	TextTree[2] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.17871, 1146.21838, 45.43780+0.6,15.0);

	Tree[3] = CreateObject(655, -1944.97339, 1135.99084, 47.97780,   0.00000, 0.00000, 0.00000); // 3
	TextTree[3] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1944.97339, 1135.99084, 47.97780+0.6,15.0);

	Tree[4] = CreateObject(655, -1931.96802, 1135.70496, 46.31780,   0.00000, 0.00000, 0.00000); // 4
	TextTree[4] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.96802, 1135.70496, 46.31780+0.6,15.0);

	Tree[5] = CreateObject(655, -1918.96497, 1135.90906, 46.05780,   0.00000, 0.00000, 0.00000); // 5
    TextTree[5] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1918.96497, 1135.90906, 46.05780+0.6,15.0);

	Tree[6] = CreateObject(655, -1945.53540, 1124.41785, 49.81780,   0.00000, 0.00000, 0.00000); // 6
	TextTree[6] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1945.53540, 1124.41785, 49.81780+0.6,15.0);

	Tree[7] = CreateObject(655, -1931.66492, 1123.85962, 47.69780,   0.00000, 0.00000, 0.00000); // 7
	TextTree[7] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.66492, 1123.85962, 47.69780+0.6,15.0);

	Tree[8] = CreateObject(655, -1919.00952, 1123.26355, 46.65780,   0.00000, 0.00000, 0.00000); // 8
	TextTree[8] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.00952, 1123.26355, 46.65780+0.6,15.0);

	Tree[9] = CreateObject(655, -1946.32727, 1110.69958, 51.79780,   0.00000, 0.00000, 0.00000); // 9
	TextTree[9] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1946.32727, 1110.69958, 51.79780+0.6,15.0);

	Tree[10] = CreateObject(655, -1932.04419, 1111.09460, 49.15780,   0.00000, 0.00000, 0.00000); // 10
	TextTree[10] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1932.04419, 1111.09460, 49.15780+0.6,15.0);

	Tree[11] = CreateObject(655, -1919.35522, 1110.85754, 47.31780,   0.00000, 0.00000, 0.00000); // 11
	TextTree[11] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.35522, 1110.85754, 47.31780+0.6,15.0);

	Tree[12] = CreateObject(655, -1906.60938, 1147.11414, 44.69780,   0.00000, 0.00000, 0.00000); // 12
	TextTree[12] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1906.60938, 1147.11414, 44.69780+0.6,15.0);

	Tree[13] = CreateObject(655, -1907.21753, 1136.50073, 44.45780,   0.00000, 0.00000, 0.00000); // 13
	TextTree[13] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.21753, 1136.50073, 44.45780+0.6,15.0);

	Tree[14] = CreateObject(655, -1907.32446, 1123.64209, 44.91780,   0.00000, 0.00000, 0.00000); // 14
	TextTree[14] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.32446, 1123.64209, 44.91780+0.6,15.0);

	Tree[15] =  CreateObject(655, -1907.80139, 1111.16492, 46.05780,   0.00000, 0.00000, 0.00000); // 15
	TextTree[15] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.80139, 1111.16492, 46.05780+0.6,15.0);
	return 1;
}

stock DonCay_(playerid)
{
    if(GetPVarInt(playerid,"GiaoGo") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo");

        DestroyDynamicObject(Tree[0]);

        CutTree[0][playerid] = 1;
        CayGo[0][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[0]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo1") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo1");

        DestroyDynamicObject(Tree[1]);

        CutTree[1][playerid] = 1;
        CayGo[1][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[1]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo2") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo2");

        DestroyDynamicObject(Tree[2]);

        CutTree[2][playerid] = 1;
        CayGo[2][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[2]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo3") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo3");

        DestroyDynamicObject(Tree[3]);

        CutTree[3][playerid] = 1;
        CayGo[3][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[3]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo4") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo4");

        DestroyDynamicObject(Tree[4]);

        CutTree[4][playerid] = 1;
        CayGo[4][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[4]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo5") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo5");

        DestroyDynamicObject(Tree[5]);

        CutTree[5][playerid] = 1;
        CayGo[5][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[5]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo6") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo6");

        DestroyDynamicObject(Tree[6]);

        CutTree[6][playerid] = 1;
        CayGo[6][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[6]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo7") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo7");

        DestroyDynamicObject(Tree[7]);

        CutTree[7][playerid] = 1;
        CayGo[7][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[7]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo8") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo8");

        DestroyDynamicObject(Tree[8]);

        CutTree[8][playerid] = 1;
        CayGo[8][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[8]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo9") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo9");

        DestroyDynamicObject(Tree[9]);

        CutTree[9][playerid] = 1;
        CayGo[9][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[9]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo10") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo10");

        DestroyDynamicObject(Tree[10]);

        CutTree[10][playerid] = 1;
        CayGo[10][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[10]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo11") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo11");

        DestroyDynamicObject(Tree[11]);

        CutTree[11][playerid] = 1;
        CayGo[11][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[11]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo12") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo12");

        DestroyDynamicObject(Tree[12]);

        CutTree[12][playerid] = 1;
        CayGo[12][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[12]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo13") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo13");

        DestroyDynamicObject(Tree[13]);

        CutTree[13][playerid] = 1;
        CayGo[13][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[13]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo14") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo14");

        DestroyDynamicObject(Tree[14]);

        CutTree[14][playerid] = 1;
        CayGo[14][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[14]);

        DropObjects(playerid);
		return 1;
	}
	if(GetPVarInt(playerid,"GiaoGo15") == 1)
	{
	    new string[1280];
	    new money = 2000+random(3000);
	    format(string, sizeof(string), "[THO MOC] Ban nhan duoc %d$ , tu viec giao go thanh cong.", money);
        SendClientMessageEx(playerid, COLOR_ORANGE, string);
        DeletePVar(playerid, "GiaoGo15");

        DestroyDynamicObject(Tree[15]);

        CutTree[15][playerid] = 1;
        CayGo[15][playerid] = 0;
        DangDonGo[playerid] = 0;

        PlayerPlaySound(playerid, 5448, 0.0, 0.0, 0.0);
	    DisablePlayerCheckpoint(playerid);

        DestroyDynamic3DTextLabel(Text3D:TextTree[15]);

        DropObjects(playerid);
		return 1;
	}
	return 1;
}

forward DropObjects(playerid);
public DropObjects(playerid)
{
	ApplyAnimation(playerid, "CARRY", "putdwn", 4.1, 0, 1, 1, 0, 0, 1);
    DeletePVar(playerid, "GiaoGo");
    DeletePVar(playerid, "GiaoGo1");
    DeletePVar(playerid, "GiaoGo2");
    DeletePVar(playerid, "GiaoGo3");
    DeletePVar(playerid, "GiaoGo4");
    DeletePVar(playerid, "GiaoGo5");
    DeletePVar(playerid, "GiaoGo6");
    DeletePVar(playerid, "GiaoGo7");
    DeletePVar(playerid, "GiaoGo8");
    DeletePVar(playerid, "GiaoGo9");
    DeletePVar(playerid, "GiaoGo10");
    DeletePVar(playerid, "GiaoGo11");
    DeletePVar(playerid, "GiaoGo12");
    DeletePVar(playerid, "GiaoGo13");
    DeletePVar(playerid, "GiaoGo14");
    DeletePVar(playerid, "GiaoGo15");
    RemovePlayerAttachedObject(playerid, 1);
    RemovePlayerAttachedObject(playerid, 2);
	return 1;
}

task HSTree[900000]()
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
		// 15 Phut , hoi sinh all Tree 1 lan
		Tree[0] = CreateDynamicObject(655, -1944.50916, 1146.27649, 46.55781, 0.00000, 0.00000, 0.00000); // BASIC

		Tree[1] = CreateDynamicObject(655, -1931.71521, 1145.93835, 46.05780,   0.00000, 0.00000, 0.00000); // 1

		Tree[2] = CreateDynamicObject(655, -1919.17871, 1146.21838, 45.43780,   0.00000, 0.00000, 0.00000); // 2

		Tree[3] = CreateDynamicObject(655, -1944.97339, 1135.99084, 47.97780,   0.00000, 0.00000, 0.00000); // 3

		Tree[4] = CreateDynamicObject(655, -1931.96802, 1135.70496, 46.31780,   0.00000, 0.00000, 0.00000); // 4

		Tree[5] = CreateDynamicObject(655, -1918.96497, 1135.90906, 46.05780,   0.00000, 0.00000, 0.00000); // 5

		Tree[6] = CreateDynamicObject(655, -1945.53540, 1124.41785, 49.81780,   0.00000, 0.00000, 0.00000); // 6

		Tree[7] = CreateDynamicObject(655, -1931.66492, 1123.85962, 47.69780,   0.00000, 0.00000, 0.00000); // 7

		Tree[8] = CreateDynamicObject(655, -1919.00952, 1123.26355, 46.65780,   0.00000, 0.00000, 0.00000); // 8

		Tree[9] = CreateDynamicObject(655, -1946.32727, 1110.69958, 51.79780,   0.00000, 0.00000, 0.00000); // 9

		Tree[10] = CreateDynamicObject(655, -1932.04419, 1111.09460, 49.15780,   0.00000, 0.00000, 0.00000); // 10

		Tree[11] = CreateDynamicObject(655, -1919.35522, 1110.85754, 47.31780,   0.00000, 0.00000, 0.00000); // 11

		Tree[12] = CreateDynamicObject(655, -1906.60938, 1147.11414, 44.69780,   0.00000, 0.00000, 0.00000); // 12

		Tree[13] = CreateDynamicObject(655, -1907.21753, 1136.50073, 44.45780,   0.00000, 0.00000, 0.00000); // 13

		Tree[14] = CreateDynamicObject(655, -1907.32446, 1123.64209, 44.91780,   0.00000, 0.00000, 0.00000); // 14

		Tree[15] =  CreateDynamicObject(655, -1907.80139, 1111.16492, 46.05780,   0.00000, 0.00000, 0.00000); // 15
		
		TextTree[0] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1944.50916, 1146.27649, 46.55781+ 0.6,15.0);

		TextTree[1] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.71521, 1145.93835, 46.05780+ 0.6,15.0);

		TextTree[2] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2, -1919.17871, 1146.21838, 45.43780+0.6,15.0);

		TextTree[3] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1944.97339, 1135.99084, 47.97780+0.6,15.0);

		TextTree[4] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.96802, 1135.70496, 46.31780+0.6,15.0);

	    TextTree[5] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1918.96497, 1135.90906, 46.05780+0.6,15.0);

		TextTree[6] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1945.53540, 1124.41785, 49.81780+0.6,15.0);

		TextTree[7] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.66492, 1123.85962, 47.69780+0.6,15.0);

		TextTree[8] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.00952, 1123.26355, 46.65780+0.6,15.0);

		TextTree[9] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1946.32727, 1110.69958, 51.79780+0.6,15.0);

		TextTree[10] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1932.04419, 1111.09460, 49.15780+0.6,15.0);

		TextTree[11] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.35522, 1110.85754, 47.31780+0.6,15.0);

		TextTree[12] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1906.60938, 1147.11414, 44.69780+0.6,15.0);

		TextTree[13] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.21753, 1136.50073, 44.45780+0.6,15.0);

		TextTree[14] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.32446, 1123.64209, 44.91780+0.6,15.0);

		TextTree[15] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.80139, 1111.16492, 46.05780+0.6,15.0);

	    DangDonGo[i] = 0;

	    CayGo[0][i] = 0;
	    CayGo[1][i] = 0;
	    CayGo[2][i] = 0;
	    CayGo[3][i] = 0;
	    CayGo[4][i] = 0;
	    CayGo[5][i] = 0;
	    CayGo[6][i] = 0;
	    CayGo[7][i] = 0;
	    CayGo[8][i] = 0;
	    CayGo[9][i] = 0;
	    CayGo[10][i] = 0;
	    CayGo[11][i] = 0;
	    CayGo[12][i] = 0;
	    CayGo[13][i] = 0;
	    CayGo[14][i] = 0;
	    CayGo[15][i] = 0;

	    CutTree[0][i] = 0;
	    CutTree[1][i] = 0;
	    CutTree[2][i] = 0;
	    CutTree[3][i] = 0;
	    CutTree[4][i] = 0;
	    CutTree[5][i] = 0;
	    CutTree[6][i] = 0;
	    CutTree[7][i] = 0;
	    CutTree[8][i] = 0;
	    CutTree[9][i] = 0;
	    CutTree[10][i] = 0;
	    CutTree[11][i] = 0;
	    CutTree[12][i] = 0;
	    CutTree[13][i] = 0;
	    CutTree[14][i] = 0;
	    CutTree[15][i] = 0;

	    DeletePVar(i, "GiaoGo");
	    DeletePVar(i, "GiaoGo1");
	    DeletePVar(i, "GiaoGo2");
	    DeletePVar(i, "GiaoGo3");
	    DeletePVar(i, "GiaoGo4");
	    DeletePVar(i, "GiaoGo5");
	    DeletePVar(i, "GiaoGo6");
	    DeletePVar(i, "GiaoGo7");
	    DeletePVar(i, "GiaoGo8");
	    DeletePVar(i, "GiaoGo9");
	    DeletePVar(i, "GiaoGo10");
	    DeletePVar(i, "GiaoGo11");
	    DeletePVar(i, "GiaoGo12");
	    DeletePVar(i, "GiaoGo13");
	    DeletePVar(i, "GiaoGo14");
	    DeletePVar(i, "GiaoGo15");

	    return 1;
    }
    return 1;
}


CMD:rsthomoc(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1338)
	{
	    for(new i = 0; i < MAX_PLAYERS; i++)
	    {
			// 15 Phut , hoi sinh all Tree 1 lan
			Tree[0] = CreateDynamicObject(655, -1944.50916, 1146.27649, 46.55781, 0.00000, 0.00000, 0.00000); // BASIC

			Tree[1] = CreateDynamicObject(655, -1931.71521, 1145.93835, 46.05780,   0.00000, 0.00000, 0.00000); // 1

			Tree[2] = CreateDynamicObject(655, -1919.17871, 1146.21838, 45.43780,   0.00000, 0.00000, 0.00000); // 2

			Tree[3] = CreateDynamicObject(655, -1944.97339, 1135.99084, 47.97780,   0.00000, 0.00000, 0.00000); // 3

			Tree[4] = CreateDynamicObject(655, -1931.96802, 1135.70496, 46.31780,   0.00000, 0.00000, 0.00000); // 4

			Tree[5] = CreateDynamicObject(655, -1918.96497, 1135.90906, 46.05780,   0.00000, 0.00000, 0.00000); // 5

			Tree[6] = CreateDynamicObject(655, -1945.53540, 1124.41785, 49.81780,   0.00000, 0.00000, 0.00000); // 6

			Tree[7] = CreateDynamicObject(655, -1931.66492, 1123.85962, 47.69780,   0.00000, 0.00000, 0.00000); // 7

			Tree[8] = CreateDynamicObject(655, -1919.00952, 1123.26355, 46.65780,   0.00000, 0.00000, 0.00000); // 8

			Tree[9] = CreateDynamicObject(655, -1946.32727, 1110.69958, 51.79780,   0.00000, 0.00000, 0.00000); // 9

			Tree[10] = CreateDynamicObject(655, -1932.04419, 1111.09460, 49.15780,   0.00000, 0.00000, 0.00000); // 10

			Tree[11] = CreateDynamicObject(655, -1919.35522, 1110.85754, 47.31780,   0.00000, 0.00000, 0.00000); // 11

			Tree[12] = CreateDynamicObject(655, -1906.60938, 1147.11414, 44.69780,   0.00000, 0.00000, 0.00000); // 12

			Tree[13] = CreateDynamicObject(655, -1907.21753, 1136.50073, 44.45780,   0.00000, 0.00000, 0.00000); // 13

			Tree[14] = CreateDynamicObject(655, -1907.32446, 1123.64209, 44.91780,   0.00000, 0.00000, 0.00000); // 14

			Tree[15] =  CreateDynamicObject(655, -1907.80139, 1111.16492, 46.05780,   0.00000, 0.00000, 0.00000); // 15

			TextTree[0] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1944.50916, 1146.27649, 46.55781+ 0.6,15.0);

			TextTree[1] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.71521, 1145.93835, 46.05780+ 0.6,15.0);

			TextTree[2] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2, -1919.17871, 1146.21838, 45.43780+0.6,15.0);

			TextTree[3] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1944.97339, 1135.99084, 47.97780+0.6,15.0);

			TextTree[4] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.96802, 1135.70496, 46.31780+0.6,15.0);

		    TextTree[5] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1918.96497, 1135.90906, 46.05780+0.6,15.0);

			TextTree[6] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1945.53540, 1124.41785, 49.81780+0.6,15.0);

			TextTree[7] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1931.66492, 1123.85962, 47.69780+0.6,15.0);

			TextTree[8] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.00952, 1123.26355, 46.65780+0.6,15.0);

			TextTree[9] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1946.32727, 1110.69958, 51.79780+0.6,15.0);

			TextTree[10] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1932.04419, 1111.09460, 49.15780+0.6,15.0);

			TextTree[11] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1919.35522, 1110.85754, 47.31780+0.6,15.0);

			TextTree[12] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1906.60938, 1147.11414, 44.69780+0.6,15.0);

			TextTree[13] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.21753, 1136.50073, 44.45780+0.6,15.0);

			TextTree[14] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.32446, 1123.64209, 44.91780+0.6,15.0);

			TextTree[15] = CreateDynamic3DTextLabel("{b36b00}-> CAY <-{FFFFFF}\nSu dung: {00ffff}/cuacay{FFFFFF} de don cay",COLOR_GRAD2,-1907.80139, 1111.16492, 46.05780+0.6,15.0);

		    DangDonGo[i] = 0;

		    CayGo[0][i] = 0;
		    CayGo[1][i] = 0;
		    CayGo[2][i] = 0;
		    CayGo[3][i] = 0;
		    CayGo[4][i] = 0;
		    CayGo[5][i] = 0;
		    CayGo[6][i] = 0;
		    CayGo[7][i] = 0;
		    CayGo[8][i] = 0;
		    CayGo[9][i] = 0;
		    CayGo[10][i] = 0;
		    CayGo[11][i] = 0;
		    CayGo[12][i] = 0;
		    CayGo[13][i] = 0;
		    CayGo[14][i] = 0;
		    CayGo[15][i] = 0;

		    CutTree[0][i] = 0;
		    CutTree[1][i] = 0;
		    CutTree[2][i] = 0;
		    CutTree[3][i] = 0;
		    CutTree[4][i] = 0;
		    CutTree[5][i] = 0;
		    CutTree[6][i] = 0;
		    CutTree[7][i] = 0;
		    CutTree[8][i] = 0;
		    CutTree[9][i] = 0;
		    CutTree[10][i] = 0;
		    CutTree[11][i] = 0;
		    CutTree[12][i] = 0;
		    CutTree[13][i] = 0;
		    CutTree[14][i] = 0;
		    CutTree[15][i] = 0;

		    DeletePVar(i, "GiaoGo");
		    DeletePVar(i, "GiaoGo1");
		    DeletePVar(i, "GiaoGo2");
		    DeletePVar(i, "GiaoGo3");
		    DeletePVar(i, "GiaoGo4");
		    DeletePVar(i, "GiaoGo5");
		    DeletePVar(i, "GiaoGo6");
		    DeletePVar(i, "GiaoGo7");
		    DeletePVar(i, "GiaoGo8");
		    DeletePVar(i, "GiaoGo9");
		    DeletePVar(i, "GiaoGo10");
		    DeletePVar(i, "GiaoGo11");
		    DeletePVar(i, "GiaoGo12");
		    DeletePVar(i, "GiaoGo13");
		    DeletePVar(i, "GiaoGo14");
		    DeletePVar(i, "GiaoGo15");

		    return 1;
	    }
    }
    return 1;
}
