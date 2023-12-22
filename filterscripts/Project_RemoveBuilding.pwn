#include <a_samp>

#if defined FILTERSCRIPT

#else

#endif

public OnPlayerRequestClass(playerid, classid)
{
	// REMOVE BUILDING MAPPING
	//PIZZA BOY
	RemoveBuildingForPlayer(playerid, 733, -1727.6250, 1378.6484, 5.5859, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1776.4297, 1405.4375, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 715, -1775.9609, 1406.1563, 14.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1778.9453, 1408.7734, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1775.4609, 1409.6563, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1763.3125, 1399.0781, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 715, -1763.0078, 1399.7422, 14.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1761.1797, 1401.6406, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1726.9453, 1369.8281, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1731.2266, 1370.8359, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1732.7031, 1373.5703, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1723.9688, 1390.4297, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1723.5625, 1387.6328, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 715, -1720.1875, 1394.1719, 14.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 759, -1709.7969, 1387.6250, 6.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 715, -1707.6953, 1384.6953, 14.4453, 0.25);
	
	// KHU THO MO
	RemoveBuildingForPlayer(playerid, 3362, 264.851, 2893.159, 8.937, 0.250);
	RemoveBuildingForPlayer(playerid, 3350, 266.062, 2879.229, 11.851, 0.250);
	return 1;
}

