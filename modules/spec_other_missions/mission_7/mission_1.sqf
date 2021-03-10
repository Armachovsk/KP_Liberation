
//exeple
// [pos_mission,class_name_artilery,vehocle_classname_arry,pos_base] execVM "${somepath\file.sqf}";

	// 	pos_mission - aryy ccordinate
	//	class_name_artilery - vehicle class name spawn artilery
	// 	arry_pos_bombing - where bobbing arty

// done example
// [[200,200,0],_class_name_artilery,[400,400,0]] execVM "modules\spec_other_missions\mission_7\mission_1.sqf";

//param
params ["_pos_mission", "_class_name_artilery", "_arry_pos_bombing"];


//artilery
private _artilery_1 = _class_name_artilery createVehicle _pos_mission;
private _artilery_2 = _class_name_artilery createVehicle (_artilery_1 getPos[10 + random 10,random 360]);
private _artilery_3 = _class_name_artilery createVehicle (_artilery_1 getPos[30 + random 10,random 360]);


//bombing
hint "";
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",_arry_pos_bombing, [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",_arry_pos_bombing, [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",_arry_pos_bombing, [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",_arry_pos_bombing, [], 0, "FLY"];
sleep 2 + random 20;
private	_bomb_1 = createVehicle ["BO_GBU12_LGB",_arry_pos_bombing, [], 0, "FLY"];

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
