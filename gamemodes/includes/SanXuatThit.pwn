#include <YSI\y_hooks>

//____________________________________________________________________________//

#define         DIALOG_SANXUATTHIT                  (6029)
#define         DIALOG_BANTHIT                      (6030)

new ObjThit[MAX_PLAYERS];
new NhanThit[MAX_PLAYERS];
new LayThitKho[MAX_PLAYERS];
new TimeLayThit[MAX_PLAYERS];

CMD:banthit(playerid, params[])
{
    if(!IsAtRestaurant(playerid))
	{
		new str[2460], str1[1280], str2[1280],str3[1280], name[1280];
	    format(str1, sizeof(str), "Thit da che bien hien co la : %d.", PlayerInfo[playerid][pThitCheBien]);
	    format(str2, sizeof(str), "-> Gia ban : 7,000 > 10,000$ / 1 Mieng Thit.");
	    format(str3, sizeof(str), "Ban vui long nhap so luong ban muon ban :", PlayerInfo[playerid][pThitCheBien]);
	    format(str, sizeof(str), "%s\n\n%s\n\n%s", str1,str2,str3);
	    format(name, sizeof(name), "BAN THIT");
		ShowPlayerDialog(playerid, DIALOG_BANTHIT, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
		return 1;
	}else SendClientMessageEx(playerid, COLOR_GRAD2, "   Ban khong o trong nha hang!");
	return 1;
}

CMD:xemthit(playerid, params[])
{
    new str[2460], str1[1280], str2[1280],str3[1280], name[1280];
    format(str1, sizeof(str), "Thit chua che bien hien co la : %d.", PlayerInfo[playerid][pThitChuaCheBien]);
    format(str2, sizeof(str), "Thit da che bien hien co la : %d.", PlayerInfo[playerid][pThitCheBien]);
    format(str3, sizeof(str), "Luu y : Ban co the ban' nhung mieng thit da che bien, tai cac nha hang.", PlayerInfo[playerid][pThitCheBien]);
    format(str, sizeof(str), "%s\n\n%s\n\n%s", str1,str2,str3);
    format(name, sizeof(name), "XEM THIT CUA BAN!");
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	return 1;
}

CMD:giaothit(playerid, params[])
{
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 949.4940,2129.7939,1011.0234))
    {
		if(PlayerInfo[playerid][pJob] == 32 || PlayerInfo[playerid][pJob2] == 32)
		{
		    if(PlayerInfo[playerid][pThitChuaCheBien] > 0)
		    {
				new labelthit[1280];
				format(labelthit, sizeof(labelthit), "{ffff00}[KHO THIT]{FFFFFF}\nKho : %d / 100\nSu dung: /laythit | /giaothit.", KhoThit[playerid]);

				PlayerInfo[playerid][pThitChuaCheBien] -= 1;
				KhoThit[playerid] -= 1;
				UpdateDynamic3DTextLabelText(KhoThit_, COLOR_GREY, labelthit);
			    return 1;
		    }else SendClientMessageEx(playerid, -1, "Ban khong co mieng thit chua che bien nao ca.");
		}else SendClientMessageEx(playerid, -1, "Ban chua nhan cong viec (( Nguoi San Xuat Thit )).");
	}else SendClientMessageEx(playerid, -1, "Ban khong dung o noi /giaothit.");
	return 1;
}

CMD:laythit(playerid, params[])
{
    if(gettime() < TimeLayThit[playerid])
	{
  		new string[1280];
  		format(string, sizeof(string), "Ban co the /laythit sau (( %d giay))", TimeLayThit[playerid]-gettime());
		SendClientMessageEx(playerid, COLOR_GREY, string);
		return 1;
	}
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 949.4940,2129.7939,1011.0234))
    {
		if(PlayerInfo[playerid][pJob] == 32 || PlayerInfo[playerid][pJob2] == 32)
		{
		    if(KhoThit[playerid] <= 100)
		    {
		        if(LayThitKho[playerid] == 0)
		        {
					new labelthit[1280];
					format(labelthit, sizeof(labelthit), "{ffff00}[KHO THIT]{FFFFFF}\nKho : %d / 100\nSu dung: /laythit | /giaothit.", KhoThit[playerid]);

					KhoThit[playerid] += 1;

					LayThitKho[playerid] = 1;
					UpdateDynamic3DTextLabelText(KhoThit_, COLOR_GREY, labelthit);
					SendClientMessageEx(playerid, -1, "Ban da lay thit thanh cong tu (( Kho Thit Nha May )).");

					TimeLayThit[playerid] = gettime() + 30;
				    return 1;
			    }else SendClientMessageEx(playerid, -1, "Ban da lay thit roi , khong the lay tiep o kho' thit , vui long xu ly thit truoc da~.");
		    }else SendClientMessageEx(playerid, -1, "Hien tai kho thit da het , vui long doi nguoi cung cap.");
		}else SendClientMessageEx(playerid, -1, "Ban chua nhan cong viec (( Nguoi San Xuat Thit )).");
	}else SendClientMessageEx(playerid, -1, "Ban khong dung o noi /laythit.");
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
    if(PRESSED(KEY_WALK))
	{
        if(IsPlayerInRangeOfActor(playerid, Actor[19]))
	    {
		    ShowPlayerDialog(playerid, DIALOG_SANXUATTHIT, DIALOG_STYLE_LIST, "Ban muon gi?", "Xem Huong Dan\nXin Viec", "Chon", "Thoat");
		    return 1;
        }
        
        if(IsPlayerInRangeOfPoint(playerid, 3.0, 942.4322,2153.5825,1011.0234))
        {
            if(GetPVarInt(playerid, "CheBien_") == 0)
            {
                if(PlayerInfo[playerid][pThitChuaCheBien] > 0 || LayThitKho[playerid] == 1)
                {
		            ObjThit[playerid] = CreateDynamicObject(2804, 942.383972, 2155.686035, 1011.273620,   0.00000, 0.00000, -89.500007);
		            SetPVarInt(playerid, "CheBien_", 1);
		            
		            MoveDynamicObject(ObjThit[playerid], 942.410644, 2172.371337, 1011.273620, 0.5);

		            SetPVarInt(playerid, "SXThitTime", 30);
	        		SetTimerEx("SXThit", 1000, 0, "d", playerid);
		            return 1;
	            }else SendClientMessageEx(playerid, -1, "Ban khong co mieng thit nao ca , ban co the lay tu kho hoac tu minh kiem thit.");
            }else SendClientMessageEx(playerid, -1, "Ban dang san xuat thit , nen khong the tiep tuc vui long doi.");
        }
        
        if(IsPlayerInRangeOfPoint(playerid, 3.0, 942.3013,2173.4287,1011.0234))
        {
            if(NhanThit[playerid] == 1)
            {
	            DestroyDynamicObject(ObjThit[playerid]);
	            
	            DeletePVar(playerid, "SXThitTime");
		        DeletePVar(playerid, "SXThit");

		        DeletePVar(playerid, "CheBien_");

				PlayerInfo[playerid][pThitCheBien] += 1;
				
				//ApplyAnimation(playerid, "BOMBER", "BOM_Plant",4.0,0,0,0,0,0,1);
	            //SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
				//SetPlayerAttachedObject(playerid, ATTACH_INDEX1, 2804, 1, 0.010999, 0.344999, 0, -90.8, 80.8, 0, 1, 1, 1, -1);
				
				LayThitKho[playerid] = 0;
				
				NhanThit[playerid] = 0;
				
		        SendClientMessageEx(playerid, COLOR_GREEN, "Ban da nhan duoc mot mieng thit da che bien [/tuido] [/xemthit] de biet them.");
	            return 1;
            }else SendClientMessageEx(playerid, -1, "Loi~.");
        }
	}
	return 1;
}

forward SXThit(playerid);
public SXThit(playerid)
{
    SetPVarInt(playerid, "SXThitTime", GetPVarInt(playerid, "SXThitTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "SXThitTime"));
    GameTextForPlayer(playerid, string, 1100, 3);

    if(GetPVarInt(playerid, "SXThitTime") > 0) SetTimerEx("SXThit", 1000, 0, "d", playerid);

    if(GetPVarInt(playerid, "SXThitTime") <= 0)
    {
        DeletePVar(playerid, "SXThitTime");
        DeletePVar(playerid, "SXThit");
        
        DeletePVar(playerid, "CheBien_");

        NhanThit[playerid] = 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "Ban da san xuat thit thanh cong [Alt] de lay thit.");
        return 1;
    }
    return 1;
}


hook OnPlayerUpdate(playerid)
{
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_SANXUATTHIT)
	{
	    if(response)
	    {
	       	if(listitem == 0)
		    {
		        new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
			    format(str1, sizeof(str), "Chao ban (( %s )), sau day minh se huong dan ban cach lam cong viec nay.", GetPlayerNameEx(playerid));
			    format(str2, sizeof(str), "(( 1 )) Sau khi ban da nhan cong viec (Nguoi San Xuat Thit).");
			    format(str3, sizeof(str), "(( 2 )) Ban hay su dung : /laythit | Luu y : Neu thit trong kho da het , ban hay tu minh di kiem thit.");
			    format(str4, sizeof(str), "(( 3 )) Sau khi ban da /laythit , ban can phai dem thit lai may che bien va bat dau che bien.");
			    format(str5, sizeof(str), "(( 4 )) Khi che bien xong , ban se duoc cong (( Thit Che Bien )) va gio do cua minh , va co the dem den cac cua hang /banthit.");
			    format(str, sizeof(str), "%s\n\n%s\n\n%s\n\n%s\n\n%s", str1,str2,str3,str4,str5);
			    format(name, sizeof(name), "HUONG DAN CONG VIEC");
				ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
				
				return 1;
			}
			if(listitem == 1)
		    {
				if(PlayerInfo[playerid][pJob] == 0)
				{
				    PlayerInfo[playerid][pJob] = 32;
				    SetPlayerSkin(playerid, 8);
				    SendClientMessageEx(playerid, COLOR_TWGREEN, "Ban da nhan duoc ocng viec nay thanh cong.");
				    SendClientMessageEx(playerid, COLOR_TWGREEN, "Ban nhan duoc mot trang phuc mien phi , khi nhan cong viec (Nguoi San Xuat Thit).");
				    return 1;
				}else SendClientMessageEx(playerid, -1, "Ban vui long /quitjob , de nhan duoc cong viec nay.");
			    return 1;
			}
		}
	}
	if(dialogid == DIALOG_BANTHIT)
	{
	  	if(response)
		{
		    if(strfind(inputtext, "%", true) != -1)
			{
				new str[2460], str1[1280], str2[1280],str3[1280], name[1280];
			    format(str1, sizeof(str), "Thit da che bien hien co la : %d.", PlayerInfo[playerid][pThitCheBien]);
			    format(str2, sizeof(str), "-> Gia ban : 7,000 > 10,000$ / 1 Mieng Thit.");
			    format(str3, sizeof(str), "Ban vui long nhap so luong ban muon ban :", PlayerInfo[playerid][pThitCheBien]);
			    format(str, sizeof(str), "%s\n\n%s\n\n%s", str1,str2,str3);
			    format(name, sizeof(name), "BAN THIT");
				ShowPlayerDialog(playerid, DIALOG_BANTHIT, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
				return 1;
			}
			if(strfind(inputtext, "c", true) != -1) {
				new str[2460], str1[1280], str2[1280],str3[1280], name[1280];
			    format(str1, sizeof(str), "Thit da che bien hien co la : %d.", PlayerInfo[playerid][pThitCheBien]);
			    format(str2, sizeof(str), "-> Gia ban : 7,000 > 10,000$ / 1 Mieng Thit.");
			    format(str3, sizeof(str), "Ban vui long nhap so luong ban muon ban :", PlayerInfo[playerid][pThitCheBien]);
			    format(str, sizeof(str), "%s\n\n%s\n\n%s", str1,str2,str3);
			    format(name, sizeof(name), "BAN THIT");
				ShowPlayerDialog(playerid, DIALOG_BANTHIT, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
				return 1;
			}
		    if(PlayerInfo[playerid][pThitCheBien] > 0)
		    {
			    new thit = strval(inputtext);
				if(PlayerInfo[playerid][pThitCheBien] >= thit)
				{
				    new money = 7000+random(3000);
					PlayerInfo[playerid][pThitCheBien] -= thit;
					PlayerInfo[playerid][pCash] += thit*money;

					format(string, sizeof(string), "Ban da ban' %s mieng thit voi gia %s$", number_format(thit), number_format(thit*money));
					SendClientMessageEx(playerid, COLOR_YELLOW, string);
					
					return 1;

				}else SendClientMessageEx(playerid,COLOR_RED,"Ban khong co nhieu thit den the.");
			}else SendClientMessageEx(playerid,COLOR_RED,"Ban hien tai chua co mieng thit che bien nao ca.");
		}
	}
	return 1;
}

hook OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
