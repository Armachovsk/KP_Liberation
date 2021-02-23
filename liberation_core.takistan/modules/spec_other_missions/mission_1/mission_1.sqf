
private _nearbyLocations = nearestLocations [[0,0,0], ["NameVillage", "Name", "NameCity", "NameCityCapital"], 50000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
private _nearestRoad = [_randomLoacation, 500] call BIS_fnc_nearestRoad;
//tank
private _Tank_1 = [getPos _nearestRoad, 180, "rhsgref_ins_g_t72ba", EAST] call BIS_fnc_spawnVehicle;
//mission
["Task_01", true, ["Уничтожить танк","Уничтожить танк","respawn_west"], getPos(_Tank_1 select 0), "ASSIGNED", 5, true, true, "target", true] call BIS_fnc_setTask;
//patrol
[(_Tank_1 select 2), getPos (_Tank_1 select 0), 1500] call bis_fnc_taskPatrol;
//marker
private _marker1 = createMarker ["Marker1", getPos (_Tank_1 select 0)];
"Marker1" setMarkerShape "ELLIPSE";
"Marker1" setMarkerSize [1500, 1500];
"Marker1" setMarkerColor "ColorBlack";
"Marker1" setMarkerBrush "Cross";
//wait tank desroyd
waitUntil{
	sleep 10;
	!alive (_Tank_1 select 0)
};

["Task_01","SUCCEEDED"] call BIS_fnc_taskSetState;
deleteMarker _marker1;
sleep 10;
["Task_01"] call BIS_fnc_deleteTask;