_fnc_find_pos = {
			  
private _nearbyLocations = nearestLocations [[0,0,0], ["NameVillage", "Name", "NameCity", "NameCityCapital"], 10000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
find_pos = [_randomLoacation, 700, 1500, 30, 0, 0.8, 0] call BIS_fnc_findSafePos;
};

waitUntil{
	[]call _fnc_find_pos;
	sleep 0.5;
	!isNil "find_pos"
};


//vehicle
private _Plane_1 = "Land_rhs_tu95_wreck" createVehicle find_pos;
Cargo_1 = "CargoNet_01_box_F" createVehicle (_Plane_1 getPos [20 + random 40,random 360]);
publicVariable "Cargo_1";

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
["Task_06", true, ["Эвакуировать черный ящик из подбитого ТУ-95","Эвакуировать черный ящик из подбитого ТУ-95","respawn_west"], getMarkerPos _Marker6, "CREATED", 5, true, true, "takeoff", true] call BIS_fnc_setTask;

//bot
pos_for_bot = getPos Cargo_1;
null=[pos_for_bot,20,false,true,[50,100,150],2000] execVM "Other_mission\Shared\ZoneGref.sqf";

//wait continer on base
waitUntil{
sleep 10;
(getPos Cargo_1) inArea [pos_base, 100, 100, 0, false] or !alive Cargo_1
};

if(!alive Cargo_1) exitwith {
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
deleteVehicle Cargo_1;
deleteVehicle _Plane_1;
deleteVehicle _smoke6;

