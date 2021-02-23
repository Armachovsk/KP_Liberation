//serch location
private _nearbyLocations = nearestLocations [getmarkerPos "Mission_marker", ["NameVillage", "Name", "NameCity", "NameCityCapital"], 50000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
find_pos = [_randomLoacation, 500, 1500, 30, 0, 0.8, 0] call BIS_fnc_findSafePos;
// lock time
private _Time_to_failed_mission = time;
//heli
dron_down = "O_UAV_02_dynamicLoadout_F" createVehicle find_pos;
dron_down setDamage 0.2;
dron_down setVehicleAmmo 0;
dron_down setFuel 0;
dron_down enableSimulationGlobal false;
publicvariable "dron_down";
private _voronka1 = "CraterLong" createVehicle (getPos dron_down);
_voronka1 setPos(getPos dron_down);
//marker
private _Marker4 = createMarker ["Marker4", dron_down getPos [random 300, random 360]];
"Marker4" setMarkerShape "ELLIPSE";
"Marker4" setMarkerSize [300, 300];
"Marker4" setMarkerColor "ColorBlack";
"Marker4" setMarkerBrush "Cross";
//mission
["Task_04", true, ["Не дать уничтожить дрон","Не дать уничтожить дрон","respawn_west"], getMarkerPos _Marker4, "CREATED", 5, true, true, "defend", true] call BIS_fnc_setTask;
sleep 3;
["Task_04_1", true, ["Сказать развед данные с дрона","Сказать развед данные с дрона","respawn_west"], getMarkerPos _Marker4, "ASSIGNED", 5, true, true, "download", true] call BIS_fnc_setTask;
//smoke
private _smoke1 = "test_EmptyObjectForSmoke" createVehicle getPos dron_down;
_smoke1 setPos(getPos dron_down);
//add action to dronOther_mission\Mission_4\download_date.sqf
fnc_drone_add_cation={
[[], {
_action_dron = ["TestAction 2","<t color='#ff0000'>Download date</t>","",{
					[10, [], {Hint "Начата загрузка данных";
						[find_pos] execVM "Other_mission\Mission_4\download_date.sqf";
							[[], {[dron_down,0,["ACE_MainActions","TestAction 2"]] call ace_interact_menu_fnc_removeActionFromObject;}] remoteExec ["call"];
					}, {hint "Подключение прервано"}, "Подключение..."] call ace_common_fnc_progressBar;
				},{true}] call ace_interact_menu_fnc_createAction;
[dron_down, 0, ["ACE_MainActions"], _action_dron] call ace_interact_menu_fnc_addActionToObject;
}] remoteExec ["call"];
};
[] call fnc_drone_add_cation;
publicVariable "fnc_drone_add_cation";
//warning time!
[[], {hint "Внимание врагам понадобиться не более получаса что бы найти место падения беспилотника! Поторопитесь!"}] remoteExec ["call"];
sleep 5;
// obyavlenie peremennoi
date_download = false;
publicVariable "date_download";
//bot
fnc_bot_attac = {

private _group_bot_attac_dron = createGroup [EAST, true];
//find pos
private _find_pos_from_bot = [getPos dron_down, 150, 200, 5, 0, 0.9, 0] call BIS_fnc_findSafePos;
//find pos enemy heli
private _find_pos_from_bot_air = [getPos dron_down, 1000, 1500, 20, 0, 0.7, 0] call BIS_fnc_findSafePos;
//btr
private _BTR_attac_drone = [_find_pos_from_bot, 180, "rhsgref_ins_g_btr60", EAST] call BIS_fnc_spawnVehicle;
//heli
private _heli_attac_drone = [_find_pos_from_bot_air, 180, "rhsgref_cdf_Mi24D_early", EAST] call BIS_fnc_spawnVehicle;
//waipoint for btr
private _wp_for_bot_go_tu_drone_btr = _BTR_attac_drone select 2 addWaypoint [getPos dron_down, 0];
_wp_for_bot_go_tu_drone_btr setWaypointType "SAD";
_wp_for_bot_go_tu_drone_btr setWaypointSpeed "FULL";
//waipoint for heli
private _wp_for_bot_go_tu_drone_heli = _heli_attac_drone select 2 addWaypoint [getPos dron_down, 0];
_wp_for_bot_go_tu_drone_heli setWaypointType "GUARD";
_wp_for_bot_go_tu_drone_heli setWaypointSpeed "FULL";
//arry bot
_bot_arry = [
"SpecLib_I_ChDKZ_Soldier_AT_F",
"SpecLib_I_ChDKZ_Soldier_SL_F",
"SpecLib_I_ChDKZ_Soldier_AA_F",
"SpecLib_I_ChDKZ_Soldier_MG_F",
"SpecLib_I_ChDKZ_Soldier_AR_F",
"SpecLib_I_ChDKZ_medic_F",
"SpecLib_I_ChDKZ_Soldier_M_F",
"SpecLib_I_ChDKZ_Soldier_GL_F",
"SpecLib_I_ChDKZ_Soldier_02_F",
"SpecLib_I_ChDKZ_Soldier_LAT_F"
];
//cyrcl from create bot
for "_i" from 0 to 10 do 
{
sleep 1;
_unit = _group_bot_attac_dron createUnit [selectRandom _bot_arry, _find_pos_from_bot, [], 0, "FORM"];
};
//waipoint 
private _wp_for_bot_go_tu_drone = _group_bot_attac_dron addWaypoint [getPos dron_down, 0];
_wp_for_bot_go_tu_drone setWaypointType "SAD";
[_group_bot_attac_dron, 0] setWaypointSpeed "FULL";

};
publicVariable "fnc_bot_attac";
// wait end of time or download date or kill drone
waitUntil{
	sleep 10;
if(time > _Time_to_failed_mission + 1500)then{
	[[], {hint "Быстрее они наводят артелерию на беспилотник!"}] remoteExec ["call"];
	};
	(time > _Time_to_failed_mission + 1800) or !alive dron_down or date_download
};
// if time out
if(time > _Time_to_failed_mission + 1800)exitwith{
	deleteMarker _Marker4;
	deleteVehicle _smoke1;
	dron_down enableSimulationGlobal true;
	private	_bomb_1 = createVehicle ["BO_GBU12_LGB", dron_down getPos [random 80, random 360], [], 0, "FLY"];
	sleep 2 + random 5;
	private	_bomb_1 = createVehicle ["BO_GBU12_LGB", dron_down getPos [random 50, random 360], [], 0, "FLY"];
	sleep 2 + random 5;
	private	_bomb_1 = createVehicle ["BO_GBU12_LGB", dron_down getPos [random 30, random 360], [], 0, "FLY"];
	sleep 2 + random 5;
	private	_bomb_1 = createVehicle ["BO_GBU12_LGB", dron_down getPos [random 15, random 360], [], 0, "FLY"];
	sleep 2 + random 5;
	private	_bomb_1 = createVehicle ["BO_GBU12_LGB", dron_down getPos [random 5, random 360], [], 0, "FLY"];
	sleep 1;
	private	_bomb_1 = createVehicle ["BO_GBU12_LGB", dron_down getPos [random 3, random 360], [], 0, "FLY"];
	dron_down setDamage 1;
	["Task_04","FAILED"] call BIS_fnc_taskSetState;
	sleep 5;
	["Task_04_1","FAILED"] call BIS_fnc_taskSetState;
	sleep 10;
	["Task_04"] call BIS_fnc_deleteTask;
	["Task_04_1"] call BIS_fnc_deleteTask;
};
// if dron destroy
if(!alive dron_down)exitwith{
	dron_down enableSimulationGlobal true;
	deleteMarker _Marker4;
	deleteVehicle _smoke1;
	["Task_04","FAILED"] call BIS_fnc_taskSetState;
	["Task_04_1","FAILED"] call BIS_fnc_taskSetState;
	sleep 10;
	["Task_04"] call BIS_fnc_deleteTask;
	["Task_04_1"] call BIS_fnc_deleteTask;
};
//continy mission
dron_down enableSimulationGlobal true;
deleteMarker _Marker4;
["Task_04","SUCCEEDED"] call BIS_fnc_taskSetState;
["Task_04_1","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 6;
["Task_04_2", true, ["Уничтожить беспилотник что бы он не достался врагу","Уничтожить беспилотник что бы он не достался врагу","respawn_west"], dron_down, "ASSIGNED", 5, true, true, "destroy", true] call BIS_fnc_setTask;
waitUntil{
	sleep 5;
	!alive dron_down
};
["Task_04_2","SUCCEEDED"] call BIS_fnc_taskSetState;

deleteVehicle _smoke1;
sleep 10;
["Task_04"] call BIS_fnc_deleteTask;
["Task_04_1"] call BIS_fnc_deleteTask;
["Task_04_2"] call BIS_fnc_deleteTask;
	


