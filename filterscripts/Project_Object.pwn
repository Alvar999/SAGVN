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

	//KHU THO MO
	CreateDynamicObject(17859, 266.98398, 2906.54346, 11.72389,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19450, 270.23807, 2893.60522, 10.98105,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19450, 256.00815, 2893.64526, 10.98105,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(8661, 260.32236, 2924.39380, 9.48827,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(8661, 260.32236, 2904.44092, 9.48827,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 250.48068, 2892.62646, 12.86950,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 264.07520, 2894.94604, 12.53645,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 264.10522, 2894.94482, 9.84645,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 256.78058, 2892.62646, 12.86950,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 265.96039, 2892.62646, 12.86950,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 273.29044, 2892.71655, 12.86950,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 256.52554, 2894.94604, 12.53645,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 271.78549, 2894.94604, 12.53645,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3125, 264.84973, 2893.85352, 11.14981,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3125, 261.30972, 2893.83618, 11.14981,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 269.59064, 2892.71655, 16.10950,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 260.59091, 2892.71655, 16.10950,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 253.60124, 2892.68652, 16.10950,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 255.18118, 2892.68652, 11.97947,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 270.42111, 2892.68652, 11.97947,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 259.56046, 2892.64624, 11.33950,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(6916, 261.24796, 2867.55640, 15.26390,   0.00000, 0.00000, 720.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 255.24963, 2904.41748, 19.45893,   -173.60002, 0.00000, -3.80000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(11533, 247.89743, 3029.00879, 10.65329,   -4.20000, -23.90001, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(8229, 256.71555, 2849.09937, 21.13285,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(8229, 281.43555, 2849.09937, 21.13285,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19329, 266.61136, 2848.91162, 20.86466,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 263.05563, 2908.75952, 9.36309,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 263.05563, 2896.92871, 9.36309,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 263.05563, 2902.84326, 9.36309,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.35974, 2899.16235, 8.52090,   90.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.35974, 2899.16235, 8.52090,   90.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.35815, 2906.75806, 8.51569,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(18762, 259.43304, 2911.23560, 8.97827,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(6233, 260.88290, 2977.85425, 13.09421,   0.00000, 7.60000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(6233, 260.88736, 2977.16357, 16.90548,   180.00000, 3.80000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.34799, 2914.39136, 8.52563,   90.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.34799, 2922.00879, 8.52563,   90.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.34799, 2929.63623, 8.52563,   90.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3631, 263.33847, 2936.46289, 8.57942,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(11694, 233.12906, 3032.26416, -21.71289,   16.79999, 21.99998, 135.19995, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(18228, 280.48245, 2931.68115, 40.42403,   27.39995, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 241.37231, 2905.11060, 14.04851,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 268.41437, 2904.34058, 19.71927,   -173.60002, 0.00000, -3.80000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 241.57756, 2906.72583, 18.35560,   -173.60002, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 262.38153, 3014.16895, 11.67280,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 269.18747, 3013.30054, 11.67280,   0.00000, 0.00000, 97.99995, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 253.89180, 3014.17651, 13.85281,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 259.81183, 3014.19653, 11.58278,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19464, 274.99139, 3013.68579, 13.85281,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2924.48389, 8.55114,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2925.50488, 8.55114,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2910.37207, 8.55114,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2911.37305, 8.55114,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2899.27393, 8.55114,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2900.27490, 8.55114,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2925.19336, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2926.69482, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2912.61133, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2911.07983, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2901.52051, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2900.03906, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2900.03906, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2901.50049, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2911.05981, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2912.55127, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2925.11182, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2926.61328, 9.65012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2926.54761, 8.85205,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2925.78687, 8.85205,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2925.32642, 8.87204,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2912.41504, 8.87204,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2911.65430, 8.87204,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2911.22388, 8.85205,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2901.31445, 8.85205,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2900.58374, 8.85205,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2900.13330, 8.81205,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16448, 246.49007, 2988.63403, 13.08253,   0.00000, 0.00000, 450.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 268.66183, 2964.03662, 9.29792,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 270.39301, 2987.90576, 9.53792,   0.00000, 0.00000, -25.60001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 253.45192, 2992.45459, 10.45326,   2.50000, -5.40000, -178.89996, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 257.83524, 2974.77832, 10.06952,   2.60000, -12.99999, -178.89996, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 256.80026, 2958.53223, 10.04330,   3.10000, -11.89999, 167.10002, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 268.93225, 2974.75537, 8.88406,   0.00000, 4.00000, 44.39998, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16401, 269.77664, 2997.71582, 9.64792,   0.00000, 0.00000, -48.20001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 258.03778, 2976.48657, 11.37752,   8.30000, 37.19999, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 257.27368, 2959.67871, 11.27618,   22.80000, 36.70000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 255.48184, 2959.02295, 12.84409,   22.80000, 44.00001, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 258.33658, 2973.50171, 11.34927,   -18.19997, 27.20000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 251.68196, 2992.19189, 13.23272,   -5.29998, 45.79998, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 252.68013, 2993.70386, 12.32196,   6.50002, 48.20001, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 268.99106, 2994.53052, 11.62887,   -29.09997, 61.70001, -163.40021, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 270.55618, 2994.11890, 13.02899,   24.50003, 61.70001, -111.10030, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 268.28946, 2986.80933, 10.59105,   -30.39999, -2.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 270.79089, 2986.02856, 11.61605,   -49.99998, -2.00000, 56.30000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 269.01932, 2976.57666, 10.79586,   -13.60001, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 267.65128, 2974.61865, 9.72710,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 269.13211, 2963.58057, 10.69508,   -2.00000, -32.70000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1611, 267.59171, 2965.53882, 10.34630,   16.30000, -17.30000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1354, 270.52444, 2995.10352, 12.21208,   0.00000, 0.00000, -143.39995, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1354, 253.55597, 2991.39966, 11.38445,   90.00000, 165.50006, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 236.71986, 2890.67651, 12.55793,   -173.60002, 0.00000, -27.40001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 234.97769, 2892.57959, 18.05059,   -173.60002, 0.00000, -27.40001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 250.46118, 2887.94214, 11.99947,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 250.46118, 2887.94214, 16.12948,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3498, 250.52066, 2883.61987, 11.82949,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(18980, 278.79465, 2892.81470, 9.09628,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19329, 259.67139, 2911.60864, 10.91827,   0.00000, 0.00000, -36.20002, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19975, 264.95724, 2892.93384, 8.48517,   0.00000, 0.00000, -31.70000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3286, 268.14957, 2882.27832, 15.23072,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1408, 264.93359, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 259.89499, 2897.18579, 10.72668,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 259.89499, 2903.88110, 10.72668,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 266.48486, 2903.87109, 10.72668,   0.00000, 180.00000, 270.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1479, 266.48486, 2897.17603, 10.72668,   0.00000, 180.00000, 270.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3406, 261.82654, 2897.81836, 13.78593,   90.00000, 270.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3406, 261.82654, 2905.95557, 13.78593,   90.00000, 270.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.29727, 2906.44312, 9.42296,   270.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.29727, 2897.51465, 9.42296,   270.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.29727, 2901.89868, 9.42296,   270.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(18762, 264.39307, 2911.23560, 8.98827,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(18762, 254.46315, 2911.23560, 9.01827,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1408, 259.48358, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2911.32861, 9.42899,   270.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2916.15332, 9.42899,   270.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2920.89795, 9.42899,   270.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2925.64185, 9.43900,   270.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2930.46631, 9.45899,   270.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2935.07080, 9.51900,   270.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(17029, 249.97578, 2929.00854, 30.84988,   -70.99995, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 279.66611, 2923.31567, 10.97547,   13.00000, -1.60000, 108.89988, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 281.64511, 2922.32373, 17.68741,   13.00000, -1.60000, 108.89988, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1408, 254.04373, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(10984, 268.82709, 3014.16040, 11.26183,   82.39998, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(10984, 260.22739, 3015.62964, 10.41585,   89.99992, 3.30000, -3.80000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(10984, 257.90094, 3003.08130, 9.84879,   0.00000, 16.99999, -1.70000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(10984, 257.25058, 2981.15918, 9.84879,   0.00000, 16.99999, -1.70000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(10984, 271.51422, 2950.14087, 10.64894,   0.50000, -12.50000, -1.70000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(899, 285.59000, 2942.47534, 11.84953,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(943, 263.21121, 2951.75488, 11.03218,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(943, 263.21121, 2950.01318, 11.00217,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(943, 262.30103, 2950.01318, 11.00217,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19601, 262.53256, 2954.34961, 10.25588,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(943, 262.29123, 2951.75488, 11.03218,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1025, 263.96524, 2952.55542, 10.18442,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1025, 263.93521, 2949.30322, 10.18442,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1025, 261.60483, 2949.41333, 10.18442,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1025, 261.60483, 2952.68604, 10.18442,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1025, 261.60483, 2952.68604, 10.18442,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1897, 263.73984, 2953.32080, 10.56870,   179.20001, -109.59990, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1897, 261.68240, 2953.26099, 10.64937,   9.09985, -73.59978, 92.99998, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1471, 262.74591, 2950.00635, 12.80262,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2978, 262.75757, 2949.35083, 11.64883,   0.00000, 90.00000, 630.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1431, 267.12460, 2937.63013, 10.10364,   0.00000, 0.00000, 105.79994, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1714, 262.70685, 2949.61230, 11.54618,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(920, 262.81549, 2952.76929, 11.57969,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(11406, 262.79306, 2950.97290, 10.26318,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1471, 262.74591, 2950.00635, 12.12261,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.69006, 2954.95801, 9.78166,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.69006, 2954.95801, 9.78166,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 262.79004, 2954.95801, 9.78166,   0.00000, 0.00000, -70.70001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 261.77823, 2954.76440, 9.78166,   0.00000, 0.00000, -15.30002, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1482, 259.72858, 2933.45923, 12.45977,   -89.20005, 4.09997, 6.60002, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1482, 266.81668, 2933.47729, 12.83598,   90.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1482, 270.21667, 2933.54736, 12.83598,   90.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1482, 259.73935, 2933.36963, 19.12911,   -89.20005, 4.09997, 6.60002, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1482, 266.81668, 2933.47729, 19.50599,   90.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1482, 263.37668, 2933.43701, 17.74596,   90.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3474, 260.05829, 3008.01807, 5.85338,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3066, 254.55571, 2914.36890, 9.32894,   0.00000, 0.00000, 80.20004, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.41742, 2926.43677, 9.66790,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.41742, 2925.40576, 9.66790,   0.00000, 0.00000, 64.10000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.45734, 2912.31860, 9.72926,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.45734, 2911.33765, 9.72926,   0.00000, 0.00000, -74.39998, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.45313, 2901.20728, 9.67809,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3930, 263.23480, 2900.17944, 9.67809,   0.00000, 0.00000, -141.70001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1408, 273.19330, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1408, 278.63315, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1307, 248.89561, 2964.64063, 17.17149,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3864, 268.05798, 2959.18750, 11.63895,   0.00000, 0.00000, -30.40000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3864, 268.00412, 2984.33032, 11.63895,   0.00000, 0.00000, -8.40001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3862, 258.79337, 2918.37183, 10.49827,   0.00000, 0.00000, 75.20001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(337, 259.08612, 2917.11768, 10.23828,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(337, 259.17615, 2917.63818, 10.23828,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(337, 259.30624, 2918.18872, 10.23828,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(337, 259.42627, 2918.89941, 10.21828,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3862, 259.59024, 2921.38965, 10.49827,   0.00000, 0.00000, 75.20001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19631, 259.82285, 2920.13037, 10.12828,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19631, 259.94284, 2920.56079, 10.12828,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19631, 260.26288, 2921.11133, 10.12828,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19631, 260.30289, 2921.71191, 10.12828,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19980, 259.59296, 2911.60620, 8.31826,   0.00000, 0.00000, 145.29996, .worldid = 0, .streamdistance = 300);
	
	// HQ SAAS
	CreateDynamicObject(9245, -1546.55371, 478.54370, 12.65748,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8555, -1507.17688, 409.01999, 29.53750,   0.00000, 0.00000, -90.10001, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.24097, 414.76553, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.23560, 413.36530, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.22986, 411.93509, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.22400, 410.60504, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.21838, 409.18481, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.21191, 407.77472, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1531.24695, 416.15561, 15.23455,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3268, -1541.21802, 366.69589, 6.21178,   0.00000, 0.00000, -90.29993, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3268, -1571.05811, 366.85193, 6.21178,   0.00000, 0.00000, -90.29993, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1583.31006, 338.21948, 22.35509,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1467.91968, 433.99960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1433.55872, 433.99960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1397.26794, 433.99960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1360.38770, 433.99960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1467.92932, 394.71960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1433.14954, 394.71960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1397.73877, 394.71960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9241, -1360.61780, 394.71960, 30.76816,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8171, -1412.55347, 355.45065, 29.11303,   0.00000, 0.00000, 89.90001, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11319, -1486.37598, 367.21436, 31.71174,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2614, -1486.32935, 367.19540, 35.91906,   0.00000, 0.00000, 89.79989, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1449.30371, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1445.99377, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1442.62366, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1439.09326, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1435.22266, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1431.19226, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1427.34204, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1423.37109, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1419.02100, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1385.37036, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1381.87048, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1377.91003, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1374.26990, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1370.57971, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1366.86987, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1363.00867, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1359.42822, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1355.76794, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1352.14709, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1348.00684, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1343.79578, 355.43851, 29.63570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(13190, -1231.03479, 452.46481, 9.75566,   0.00000, 0.00000, -179.99998, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19905, -1271.19824, 441.99136, 6.06444,   0.00000, 0.00000, 179.90009, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19905, -1312.01917, 442.06247, 6.06444,   0.00000, 0.00000, 179.90009, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16082, -1291.03296, 425.75085, 2.41107,   0.00000, 0.00000, 89.90020, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3279, -1238.12598, 472.65311, 6.04670,   0.00000, 0.00000, 179.90001, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8210, -1479.18054, 481.31384, 6.59251,   0.00000, 0.00000, -179.99992, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8210, -1416.39001, 481.31384, 6.59251,   0.00000, 0.00000, -179.99992, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8210, -1364.23059, 481.31384, 6.59251,   0.00000, 0.00000, -179.99992, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5130, -1334.65564, 478.66974, 8.16349,   0.00000, 0.00000, -135.39996, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8210, -1304.96973, 481.31384, 6.59251,   0.00000, 0.00000, -179.99992, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8210, -1261.84912, 481.31384, 6.59251,   0.00000, 0.00000, -179.99992, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1225.96326, 473.28290, 5.91700,   0.00000, 0.00000, 135.19977, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1220.57996, 467.93408, 5.91700,   0.00000, 0.00000, 135.19977, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1253.26770, 433.86035, 5.95201,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1241.32800, 433.86035, 5.95201,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1229.77686, 433.95755, 5.95201,   0.00000, 0.00000, 64.99996, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10838, -1490.36548, 462.00525, 19.14129,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19380, -1490.21960, 474.57129, 19.07748,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19380, -1490.21960, 465.01135, 19.07748,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19380, -1489.38892, 465.01135, 19.07748,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19380, -1489.38892, 474.57132, 19.07748,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8171, -1417.23926, 461.56305, 6.18666,   0.00000, 0.00000, -89.89999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8171, -1303.56042, 461.76068, 6.19665,   0.00000, 0.00000, -89.89999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1480.73120, 455.82861, 6.79940,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1480.73120, 457.30872, 6.79940,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1480.73120, 458.97888, 6.79940,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1480.73120, 460.66891, 6.79940,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(982, -1467.93091, 460.78546, 6.59110,   0.00000, 0.00000, 90.10005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(982, -1442.31946, 460.83057, 6.59110,   0.00000, 0.00000, 90.10005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(982, -1409.28699, 460.88879, 6.59110,   0.00000, 0.00000, 90.10005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(982, -1383.69739, 460.93375, 6.59110,   0.00000, 0.00000, 90.10005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(982, -1358.10657, 460.97855, 6.59110,   0.00000, 0.00000, 90.10005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(982, -1343.71692, 461.00360, 6.59110,   0.00000, 0.00000, 90.10005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1486.31970, 479.19208, 6.78705,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1486.31970, 477.80197, 6.78705,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1486.31970, 480.62198, 6.78705,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19124, -1486.31970, 476.32214, 6.78705,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1493.27002, 474.90463, 18.77457,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1493.25220, 471.32458, 18.77457,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1493.23535, 467.93469, 18.77457,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1493.21484, 464.03491, 18.77457,   0.00000, 0.00000, -179.70013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1620.99780, 358.69705, 5.84545,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1632.87903, 358.69705, 5.84545,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(987, -1643.70105, 358.69705, 5.84545,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11245, -1541.61426, 483.03470, 13.05458,   0.00000, 0.00000, 90.79992, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(617, -1551.87402, 481.59024, 5.81339,   0.00000, 0.00000, -28.39999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(617, -1558.58582, 480.88095, 5.81339,   0.00000, 0.00000, -22.60000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(12978, -1595.90674, 366.37997, 6.59564,   0.00000, 0.00000, 179.30005, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(13027, -1595.80933, 366.44769, 9.43179,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16773, -1600.22375, 366.57480, 8.45607,   0.00000, 0.00000, 89.69997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16773, -1591.41089, 366.73877, 8.33607,   0.00000, 0.00000, 89.69997, .worldid = 0, .streamdistance = 700);
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
