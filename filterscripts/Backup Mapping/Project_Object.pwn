#include <a_samp>
#include <streamer>
#pragma tabsize 0

#undef MAX_PLAYERS
#define MAX_PLAYERS 500

//new lspd;
new Garage, improving, state1, state2;

public OnFilterScriptExit() {
    for(new i; i < MAX_PLAYERS; i++) {
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) {
			TogglePlayerControllable(i, false);
		}
	}
}

public OnFilterScriptInit() {

    for(new i; i < MAX_PLAYERS; i++) {
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) {
			TogglePlayerControllable(i, false);
		}
	}
	//________________________________________________________________________//
	// NGU DAN SF
	CreateDynamicObject(3406, -1474.49768, 706.52301, -0.29079,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8493, -1439.31860, 814.61426, 17.87739,   0.00000, -0.20000, -89.10000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1471.69946, 711.35651, -0.29079,   0.00000, 0.00000, -88.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1471.89893, 720.16431, -0.29079,   0.00000, 0.00000, -88.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1472.09827, 728.95233, -0.29079,   0.00000, 0.00000, -88.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11496, -1475.94104, 741.82269, 1.61521,   0.00000, 0.00000, 1.30000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11496, -1476.30151, 757.73877, 1.61521,   0.00000, 0.00000, 1.30000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1473.02197, 769.68134, -0.29079,   0.00000, 0.00000, -88.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1473.22083, 778.46869, -0.29079,   0.00000, 0.00000, -88.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1476.39978, 793.11578, -0.29079,   0.00000, 0.00000, 1.20000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1482.94446, 792.81848, -0.29079,   0.00000, 0.00000, 1.20000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11496, -1480.91980, 741.70734, 1.57521,   0.00000, 0.00000, -178.69998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11496, -1481.28271, 757.63379, 1.57521,   0.00000, 0.00000, -178.69998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1473.42017, 787.24628, -0.29079,   0.00000, 0.00000, -88.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16151, -1481.88806, 761.92120, 2.16711,   0.00000, 0.00000, -179.30005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11497, -1480.15503, 740.24664, 1.21408,   0.00000, 0.00000, 91.29996, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1480.73743, 733.73358, 2.22794,   0.00000, 0.00000, 1.60000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1478.79822, 733.78766, 2.22794,   0.00000, 0.00000, 1.60000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1475.31750, 733.87549, 2.24794,   0.00000, 0.00000, 1.60000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1480.81653, 765.57434, 2.24794,   0.00000, 0.00000, 1.60000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1476.68726, 765.69092, 2.24794,   0.00000, 0.00000, 1.60000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1467.24902, 771.38623, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1467.35352, 778.04578, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1467.45459, 784.50562, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1467.56018, 791.20483, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1466.57617, 728.49170, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1466.47290, 721.88220, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1466.37012, 715.31238, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1466.26526, 708.67310, -0.32937,   0.00000, 0.00000, 0.90000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1256, -1482.47156, 749.34406, 2.45236,   0.00000, 0.00000, 179.89980, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1256, -1482.46558, 753.70496, 2.45236,   0.00000, 0.00000, 179.89980, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3425, -1474.39893, 737.75104, 2.47718,   0.00000, 0.00000, -177.50000, .worldid = 0, .streamdistance = 700);

	// BEN CANG SF
	CreateDynamicObject(6300, -1489.55981, 188.34970, -5.52000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(6283, -1478.73279, 198.40660, 7.60000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(6466, -1483.08289, 187.96454, 4.40000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3361, -1523.70276, 188.80765, 1.60000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3361, -1516.72925, 181.86026, 1.60000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1520.85071, 184.49683, 3.67300,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1519.35608, 185.91417, 3.67300,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1527.83276, 192.93793, -1.00000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1534.05835, 199.17389, -1.00000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1536.88391, 202.10381, 2.50000,   30.00000, 90.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1541.10925, 206.33507, 4.10000,   0.00000, 90.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1545.32605, 210.55968, 2.50000,   -30.00000, 90.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1550.44958, 215.61406, -1.00000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1556.71069, 221.85443, -1.00000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1562.13220, 220.39667, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1568.35645, 214.17337, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1574.58118, 207.94524, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1580.81042, 201.74129, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1587.02881, 195.53316, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1593.24683, 189.31775, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1599.47937, 183.09019, -1.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, -1602.30872, 176.55910, -1.00030,   0.00000, 0.00000, 95.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1541.56458, 205.88460, 4.78000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1540.74939, 206.82401, 4.78000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1536.68750, 202.76050, 3.40000,   30.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1537.57080, 201.87216, 3.40000,   30.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1545.68066, 209.93979, 3.40000,   -30.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, -1544.82153, 210.92896, 3.40000,   -30.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3361, -1598.84290, 172.71886, 0.50000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3861, -1482.15100, 160.75267, 3.90000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3861, -1484.94849, 163.46724, 3.90000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3861, -1491.80945, 156.60837, 3.90000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3861, -1489.03088, 153.85555, 3.90000,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1530.83093, 165.79514, 3.24469,   0.00000, 0.00000, 134.90009, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1539.89697, 156.75987, 3.24469,   0.00000, 0.00000, 134.90009, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1548.96204, 147.72452, 3.24469,   0.00000, 0.00000, 134.90009, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1558.02612, 138.68929, 3.24469,   0.00000, 0.00000, 134.90009, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1698, -1563.81335, 134.90990, 1.68337,   -28.09999, 0.00000, 45.20000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1698, -1565.84680, 136.92975, 0.15258,   -28.09999, 0.00000, 45.20000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1575.43591, 139.10530, 3.00469,   0.00000, 0.00000, 45.09998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1573.65662, 140.89020, 3.00469,   0.00000, 0.00000, 45.09998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1570.73254, 140.84514, 3.02332,   2.60000, 0.00000, -45.19999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1567.80835, 137.90045, 3.02332,   2.60000, 0.00000, -45.19999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(970, -1564.89856, 134.96991, 3.02332,   2.60000, 0.00000, -45.19999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1583.44629, 131.13875, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1592.49146, 122.09480, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1601.51563, 113.07208, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1610.57532, 104.01402, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1619.65552, 94.93473, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1628.72839, 85.86253, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1637.81506, 76.77619, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1646.88855, 67.70401, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, -1655.93347, 58.66018, 3.21469,   0.00000, 0.00000, -44.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(709, -1652.90430, 8.86335, 2.55469,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);

    //________________________________________________________________________//
    for(new i, Float: fPlayerPos[3]; i < MAX_PLAYERS; i++) {
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) {
			Streamer_UpdateEx(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			GetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			SetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2] + 2.5);
			TogglePlayerControllable(i, true);
		}
	}
	// Headroom for static objects - streamed limits are completely independent (cause of old crashing)
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, 965);
}

public OnPlayerKeyStateChange(playerid,newkeys,oldkeys)
{
    if(newkeys == KEY_FIRE && IsPlayerInRangeOfPoint(playerid,1.5,1697.1497, -1451.4354, 13.9228))
    {
        if(state1 == 0) { MoveObject(Garage,1701.4714,-1451.0681,16.3389,1.0,0.0000,90.0000,90.0000); state1 = 1; }
        else { MoveObject(Garage,1701.471435,-1450.908081,14.476869,1.0,0.000000,0.000000,90.000000); state1 = 0; }
    }
    if(newkeys == KEY_FIRE && IsPlayerInRangeOfPoint(playerid,1.5,1699.9225, -1464.1177, 14.0528))
    {
        if(state2 == 0) { MoveObject(improving,1701.4780,-1460.9283,12.5519,1.0,0.0000,0.0000,0.0000); state2 = 1; }
        else { MoveObject(improving,1701.478027,-1460.928344,10.672800,1.0,0.000,0.000,0.000); state2 = 0; }
    }
    return 1;
}
