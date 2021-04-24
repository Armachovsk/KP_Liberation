//exeple
// [pos_mission,class_name_vehicle,vehocle_classname_arry,pos_base] execVM "${somepath\file.sqf}";

	// 	pos_mission - aryy ccordinate
	//	class_name_vehicle - vehicle
	// 	class_name_box - class name box to need recvest
	// 	pos_base - pos base to need delivery MHQ

// done example
// [[200,200,0],"BlackhawkWreck","CargoNet_01_box_F",[1000,1000,0]] execVM "SPEC\other_missions\mission_6\mission_1.sqf";

//param
params ["_pos_mission", "_class_name_vehicle", "_class_name_box", "_pos_base"];


//vehicle
private _Plane_1 = _class_name_vehicle createVehicle _pos_mission;
_Cargo_1 = _class_name_box createVehicle (_Plane_1 getPos [20 + random 40,random 360]);
[_Cargo_1, 1] call ace_cargo_fnc_setSize;

//marker
private _Marker6 = createMarker ["Marker6", _Plane_1 getPos [random 300, random 360]];
"Marker6" setMarkerShape "ELLIPSE";
"Marker6" setMarkerSize [300, 300];
"Marker6" setMarkerColor "ColorBlack";
"Marker6" setMarkerBrush "Cross";

//smoke
private _smoke6 = "test_EmptyObjectForSmoke" createVehicle getPos _Plane_1;
_smoke6 setPos(getPos _Plane_1);
//task
["Task_06", true, ["Эвакуировать черный ящик из подбитого вертолета","Эвакуировать черный ящик из подбитого вертолета","respawn_west"], getMarkerPos _Marker6, "CREATED", 5, true, true, "takeoff", true] call BIS_fnc_setTask;

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

] execVM "SPEC\other_missions\fnc\fn_other_missions_spawnEnemyBot.sqf";

//wait continer on base
waitUntil{
sleep 10;
(getPos _Cargo_1) inArea [_pos_base, 100, 100, 0, false] or !alive _Cargo_1
};

if(!alive _Cargo_1) exitwith {
	deleteMarker _Marker6;
	["Task_06","FAILED"] call BIS_fnc_taskSetState;
	sleep 10;
	["Task_06"] call BIS_fnc_deleteTask;
	deleteVehicle _Plane_1;
	deleteVehicle _smoke6;
};

deleteMarker _Marker6;
["Task_06","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 10;
["Task_06"] call BIS_fnc_deleteTask;
deleteVehicle _Cargo_1;
deleteVehicle _Plane_1;
deleteVehicle _smoke6;
