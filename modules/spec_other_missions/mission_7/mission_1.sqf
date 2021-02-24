private _nearbyLocations = nearestLocations [[0,0,0], ["NameVillage", "Name", "NameCity", "NameCityCapital"], 10000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
private _find_pos = [_randomLoacation, 500, 1000, 50, 0, 0.9, 0] call BIS_fnc_findSafePos;

//artilery
private _artilery_1 = "rhsgref_ins_g_d30" createVehicle _find_pos;
private _artilery_2 = "rhsgref_ins_g_d30" createVehicle (_artilery_1 getPos[10 + random 10,random 360]);
private _artilery_3 = "rhsgref_ins_g_d30" createVehicle (_artilery_1 getPos[30 + random 10,random 360]);

waitUntil {
	sleep 5;
	Hint "Ожидаеие спауна КШМ";
	alive MHQ_1
};
//bombing
hint "";
private	_bomb_1 = createVehicle ["BO_GBU12_LGB", MHQ_1 getPos [150 + random 100, random 360], [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB", MHQ_1 getPos [150 + random 100, random 360], [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB", MHQ_1 getPos [150 + random 100, random 360], [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB", MHQ_1 getPos [150 + random 100, random 360], [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB", MHQ_1 getPos [150 + random 100, random 360], [], 0, "FLY"];

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
[_artilery_1,20,false,true,[50,100,150],2000] call SPEC_fnc_other_missions_zoneGref;


waitUntil{
	sleep 10;
	!alive _artilery_1 && !alive _artilery_2 && !alive _artilery_3
};


deleteMarker _Marker7;
["Task_07","SUCCEEDED"] call BIS_fnc_taskSetState;
sleep 10;
["Task_07"] call BIS_fnc_deleteTask;
