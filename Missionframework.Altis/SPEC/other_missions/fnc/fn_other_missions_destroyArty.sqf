
//exeple
// [pos_mission,class_name_artilery,vehocle_classname_arry,pos_base] execVM "${somepath\file.sqf}";

	// 	pos_mission - aryy ccordinate
	//	class_name_artilery - vehicle class name spawn artilery
	// 	arry_pos_bombing - where bobbing arty

// done example
// [[200,200,0],"CPC_ME_O_KAM_D30",[400,400,0]] execVM "SPEC\other_missions\mission_7\mission_1.sqf";

//param
params ["_pos_mission", "_class_name_artilery", "_arry_pos_bombing"];


//artilery
private _artilery_1 = _class_name_artilery createVehicle _pos_mission;
private _artilery_2 = _class_name_artilery createVehicle (_artilery_1 getPos[10 + random 10,random 360]);
private _artilery_3 = _class_name_artilery createVehicle (_artilery_1 getPos[30 + random 10,random 360]);


//bombing
hint "";
_area_pos_bombing_x = (_arry_pos_bombing select 0) + selectRandom[+100,-100] + random [-200, 0, 200];
_area_pos_bombing_y = (_arry_pos_bombing select 1) + selectRandom[+100,-100] + random [-200, 0, 200];
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",[_area_pos_bombing_x, _area_pos_bombing_y, _arry_pos_bombing select 2], [], 0, "FLY"];
sleep 2 + random 20;
_area_pos_bombing_x = (_arry_pos_bombing select 0) + selectRandom[+100,-100] + random [-200, 0, 200];
_area_pos_bombing_y = (_arry_pos_bombing select 1) + selectRandom[+100,-100] + random [-200, 0, 200];
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",[_area_pos_bombing_x, _area_pos_bombing_y, _arry_pos_bombing select 2], [], 0, "FLY"];
sleep 2 + random 20;
_area_pos_bombing_x = (_arry_pos_bombing select 0) + selectRandom[+100,-100] + random [-200, 0, 200];
_area_pos_bombing_y = (_arry_pos_bombing select 1) + selectRandom[+100,-100] + random [-200, 0, 200];
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",[_area_pos_bombing_x, _area_pos_bombing_y, _arry_pos_bombing select 2], [], 0, "FLY"];
sleep 2 + random 20;
_area_pos_bombing_x = (_arry_pos_bombing select 0) + selectRandom[+100,-100] + random [-200, 0, 200];
_area_pos_bombing_y = (_arry_pos_bombing select 1) + selectRandom[+100,-100] + random [-200, 0, 200];
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",[_area_pos_bombing_x, _area_pos_bombing_y, _arry_pos_bombing select 2], [], 0, "FLY"];
sleep 2 + random 20;
_area_pos_bombing_x = (_arry_pos_bombing select 0) + selectRandom[+100,-100] + random [-200, 0, 200];
_area_pos_bombing_y = (_arry_pos_bombing select 1) + selectRandom[+100,-100] + random [-200, 0, 200];
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",[_area_pos_bombing_x, _area_pos_bombing_y, _arry_pos_bombing select 2], [], 0, "FLY"];

[[], {hint "Вражеская артелерия обстреливает КШМ! Уничтожте артелерию!"}] remoteExec ["call"];

//marker
private _Marker7 = createMarker ["Marker7", _artilery_1 getPos [random 300, random 360]];
"Marker7" setMarkerShape "ELLIPSE";
"Marker7" setMarkerSize [300, 300];
"Marker7" setMarkerColor "ColorBlack";
"Marker7" setMarkerBrush "Cross";

//task
["Task_07", true, ["Уничтожить артелерию","Уничтожить артелерию","respawn_west"], getMarkerPos _Marker7, "ASSIGNED", 5, true, true, "destroy", true] call BIS_fnc_setTask;


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


waitUntil{
	sleep 10;
	!alive _artilery_1 && !alive _artilery_2 && !alive _artilery_3
};


deleteMarker _Marker7;
["Task_07","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 10;
["Task_07"] call BIS_fnc_deleteTask;
