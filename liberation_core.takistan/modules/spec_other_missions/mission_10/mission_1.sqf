private _nearbyLocations = nearestLocations [[0,0,0], ["NameVillage", "Name", "NameCity", "NameCityCapital"], 10000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
private _find_pos = [_randomLoacation, 500, 1000, 30, 0, 0.9, 0] call BIS_fnc_findSafePos;

private _radar_1 = "rhs_prv13" createVehicle _find_pos;

//marker
private _Marker10 = createMarker ["Marker10", _radar_1 getPos [random 500, random 360]];
"Marker10" setMarkerShape "ELLIPSE";
"Marker10" setMarkerSize [300, 300];
"Marker10" setMarkerColor "ColorBlack";
"Marker10" setMarkerBrush "Cross";

["Task_10", true, ["Уничтожить РЛС","Уничтожить РЛС","respawn_west"], getMarkerPos _Marker10, "CREATED", 5, true, true, "meet", true] call BIS_fnc_setTask;

getPos_radar = _radar_1 getPos [10 + random 10, random 360];
[getPos_radar,20,false,true,[50,100,150],2000] call SPEC_fnc_other_missions_zoneGref;

waitUntil{
	sleep 10;
	!alive _radar_1
};

["Task_10","SUCCEEDED"] call BIS_fnc_taskSetState;
deleteMarker _Marker10;
sleep 10;
["Task_03"] call BIS_fnc_deleteTask;

