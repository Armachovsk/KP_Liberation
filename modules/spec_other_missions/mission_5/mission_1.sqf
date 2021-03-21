//exeple
// [pos_mission,vehicle_to_recwest,vehocle_classname_arry,pos_base] execVM "${somepath\file.sqf}";

	// 	pos_mission - aryy ccordinate
	//	vehicle_to_recwest - vehicle to need recvest
	// 	vehocle_classname_arry - class name vehicle in colonna
	// 	pos_base - pos base to need delivery MHQ

// done example
// [[200,200,0],"rhsusf_m1152_sicps_usarmy_d",["rhsusf_m1025_d_m2", "rhsusf_M1117_D", "rhsusf_m113d_usarmy"],[1000,1000,0]] execVM "modules\spec_other_missions\mission_5\mission_1.sqf";

//param
params ["_pos_mission", "_vehicle_to_recwest", "_vehocle_classname_arry", "_pos_base"];

//vehicle
private _Vehicle_1 = "rhsusf_m1152_sicps_usarmy_d" createVehicle _pos_mission;
private _Vehicle_2 = selectRandom _vehocle_classname_arry createVehicle (_pos_mission getPos [80 + random 50,random 360]);
private _Vehicle_3 = selectRandom _vehocle_classname_arry createVehicle (_pos_mission getPos [15 + random 50,random 360]);
private _Vehicle_4 = selectRandom _vehocle_classname_arry createVehicle (_pos_mission getPos [20 + random 50,random 360]);

_Vehicle_1 setDamage 0.5;
_Vehicle_2 setDamage 0.7;
_Vehicle_3 setDamage 0.7;
_Vehicle_4 setDamage 0.7;

_Vehicle_1 setVehicleAmmo 0.3;
_Vehicle_2 setVehicleAmmo 0.3;
_Vehicle_3 setVehicleAmmo 0.3;
_Vehicle_4 setVehicleAmmo 0.3;

_Vehicle_1 setFuel random 1;
_Vehicle_2 setFuel random 1;
_Vehicle_3 setFuel random 1;
_Vehicle_4 setFuel random 1;

//marker
private _Marker5 = createMarker ["Marker5", _Vehicle_1 getPos [random 300, random 360]];
"Marker5" setMarkerShape "ELLIPSE";
"Marker5" setMarkerSize [300, 300];
"Marker5" setMarkerColor "ColorBlack";
"Marker5" setMarkerBrush "Cross";

//task
["Task_05", true, ["Эвакуировать КШМ на базу","Эвакуировать КШМ на базу","respawn_west"], getMarkerPos _Marker5, "CREATED", 5, true, true, "car", true] call BIS_fnc_setTask;
//bot
[
	_pos_mission,	// массив координатов где будет центр здания

	EAST,	// сторона ботов можнт быть: EAST, WEST, independent

	["CPC_ME_O_KAM_soldier_Medic",
"CPC_ME_O_KAM_soldier_AR",
"CPC_ME_O_KAM_soldier_TL",
"CPC_ME_O_KAM_soldier_AA",
"CPC_ME_O_KAM_soldier_LAT"],

	["CPC_ME_O_KAM_uaz_spg9",
"CPC_ME_O_KAM_uaz_dshkm"],

	["CPC_ME_O_KAM_BTR70",
"CPC_ME_O_KAM_BRDM2",
"CPC_ME_O_KAM_BMP1",
"CPC_ME_O_KAM_T72B"],

	["CPC_ME_O_KAM_ZSU",
"CPC_ME_O_KAM_ural_Zu23"],

	["CPC_ME_O_KAM_uh1h_gunship",
"CPC_ME_O_KAM_Mi24D_Early"],

	["CPC_ME_O_KAM_DSHKM",
"CPC_ME_O_KAM_Igla_AA_pod",
"CPC_ME_O_KAM_ZU23",
"CPC_ME_O_KAM_2b14_82mm"],

	200, // радиус (от центра) размещения статичных орудий(м)

	0, // количество статичных орудий

	4,	// количество легких машин которые будут патрулировать зону

	0,	// количество тяжолой техники которая будует патрулировать зону

	1,	// количество самоходных зенитныйх установок которые будут патрулировать зону

	0,	//	количество вертолетов которые будут патрулировать зону

	3,	// количество групп ботов которые будет охранять зону

	3,	//	количество ботов в группах которые будут охранять зону

	30,	// шанс появления бота в здании(на крыше) в % от 0 до 100

	2000, // радиус активации игроком

	200,	// радиус патрулирования ботов

	200,	// радиус размещения легких машин которые будут патрулировать зону(чем больше машин тем больше зону лучше сделать)

	400,	// радиус патрулирования всех машин и легких танков

	1000,	// радиус патрулирования вертолетов

	false	// удалять ли зону после активации если в зоне активации не осталось игроков

] execVM "modules\spec_other_missions\fnc\fn_other_missions_spawnEnemyBot.sqf";

//wait prp on base or destroid
waitUntil{
sleep 10;
(getPos _Vehicle_1) inArea [_pos_base, 100, 100, 0, false] or !alive _Vehicle_1
};

if(!alive _Vehicle_1) exitwith {
	deleteMarker _Marker5;
	["Task_05","FAILED"] call BIS_fnc_taskSetState;
	sleep 10;
	["Task_05"] call BIS_fnc_deleteTask;
};

deleteMarker _Marker5;
["Task_05","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 10;
["Task_05"] call BIS_fnc_deleteTask;
deleteVehicle _Vehicle_1;
