private _nearbyLocations = nearestLocations [[0,0,0], ["NameVillage", "Name", "NameCity", "NameCityCapital"], 50000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
private _arry_roads = _randomLoacation nearRoads 3000;
private _select_random_road = selectRandom _arry_roads;

//vehicle
private _Vehicle_1 = "rhs_prp3_vv" createVehicle getPos _select_random_road;
private _Vehicle_2 = "rhs_btr80_vv" createVehicle (_select_random_road getPos [80 + random 50,random 360]);
private _Vehicle_3 = "rhs_tigr_m_3camo_vv" createVehicle (_select_random_road getPos [15 + random 50,random 360]);
private _Vehicle_4 = "rhs_tigr_m_3camo_vv" createVehicle (_select_random_road getPos [20 + random 50,random 360]);

_Vehicle_1 setDamage 0.5;
_Vehicle_2 setDamage 0.9;
_Vehicle_3 setDamage 0.7;
_Vehicle_4 setDamage 0.7;

_Vehicle_1 setVehicleAmmo 0.3;
_Vehicle_2 setVehicleAmmo 0.3;
_Vehicle_3 setVehicleAmmo 0.3;
_Vehicle_4 setVehicleAmmo 0.3;

_Vehicle_1 setFuel 0.3;
_Vehicle_2 setFuel 0.3;
_Vehicle_3 setFuel 0.3;
_Vehicle_4 setFuel 0.3;

//marker
private _Marker5 = createMarker ["Marker5", _Vehicle_1 getPos [random 300, random 360]];
"Marker5" setMarkerShape "ELLIPSE";
"Marker5" setMarkerSize [300, 300];
"Marker5" setMarkerColor "ColorBlack";
"Marker5" setMarkerBrush "Cross";

//task
["Task_05", true, ["Эвакуировать ПРП на базу","Эвакуировать ПРП базу","respawn_west"], getMarkerPos _Marker5, "CREATED", 5, true, true, "car", true] call BIS_fnc_setTask;
//bot
pos_for_bot = getPos _Vehicle_1;
[pos_for_bot,20,false,true,[50,100,150],2000] call SPEC_fnc_other_missions_zoneGref;

//wait prp on base or destroid
waitUntil{
sleep 10;
(getPos _Vehicle_1) inArea [pos_base, 100, 100, 0, false] or !alive _Vehicle_1
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
