
private _nearbyLocations = nearestLocations [[0,0,0], ["NameVillage", "Name", "NameCity", "NameCityCapital"], 50000];
private _randomLoacation = getPos selectRandom _nearbyLocations;
private _find_pos = [_randomLoacation, 500, 1000, 50, 0, 0.8, 0] call BIS_fnc_findSafePos;

//heli
private _heli_down = "RHS_AH64D" createVehicle _find_pos;
_heli_down setDamage 0.5;
_heli_down setVehicleAmmo 0;
_heli_down setFuel 0;
private _voronka1 = "CraterLong" createVehicle (getPos _heli_down);
_voronka1 setPos(getPos _heli_down);
//marker
private _Marker3 = createMarker ["Marker3", _heli_down getPos [random 300, random 360]];
"Marker3" setMarkerShape "ELLIPSE";
"Marker3" setMarkerSize [300, 300];
"Marker3" setMarkerColor "ColorBlack";
"Marker3" setMarkerBrush "Cross";
//mission
["Task_03_1", true, ["Эвакуировать пилотов сбитого вертолета","Эвакуировать пилотов сбитого вертолета","respawn_west"], getMarkerPos _Marker3, "CREATED", 5, true, true, "meet", true] call BIS_fnc_setTask;
sleep 3;
["Task_03", true, ["Уничтожить подбитый МИ-28","Уничтожить подбитый МИ-28","respawn_west"], getMarkerPos _Marker3, "ASSIGNED", 5, true, true, "destroy", true] call BIS_fnc_setTask;
//smoke
private _smoke1 = "test_EmptyObjectForSmoke" createVehicle getPos _heli_down;
_smoke1 setPos(getPos _heli_down);
//bot
private _find_pos_bot = _heli_down getPos [random 50, random 360];
[_find_pos_bot,10,false,true,[50,100,150],2000] call SPEC_fnc_other_missions_zoneGref;
//wait tank desroyd
waitUntil{
	sleep 10;
	!alive _heli_down
};
//hint "tell about situation"
[[], {hint "Мы обнаружили пилотов их увезли в другой город! Передаем вам координаты..."}] remoteExec ["call"];
sleep 5;
[[], {hint ""}] remoteExec ["call"];
//delete task and smone and marker
["Task_03","SUCCEEDED"] call BIS_fnc_taskSetState;
deleteMarker _Marker3;
deleteVehicle _smoke1;
//select location fom Pilot
private _nearbyLocations_1 = nearestLocations [_randomLoacation, ["NameVillage", "Name", "NameCity", "NameCityCapital"], 5000];
private _randomLoacation_1 = getPos selectRandom _nearbyLocations_1;
private _nearestRoad_1 = [_randomLoacation_1, 500] call BIS_fnc_nearestRoad;
//move mision
["Task_03_1", getPos _nearestRoad_1] call BIS_fnc_taskSetDestination;
//create pilit adn grup pilit
private _group_pilot = createGroup [east, true];
_pilot1 = _group_pilot createUnit ["rhs_pilot_combat_heli", getPos _nearestRoad_1, [], 0, "FORM"];
_pilot2 = _group_pilot createUnit ["rhs_pilot_combat_heli", getPos _nearestRoad_1, [], 0, "FORM"];
[_pilot1, true] call ACE_captives_fnc_setHandcuffed;
[_pilot2, true] call ACE_captives_fnc_setHandcuffed;
//bot
private _find_pos_bot_1 = getPos _nearestRoad_1;
[_find_pos_bot_1,20,false,true,[50,100,150],2000] call SPEC_fnc_other_missions_zoneGref;
//wait pilot delivery on base or hes die
waitUntil{
	sleep 10;
	((getPos _pilot1) inArea [pos_base, 100, 100, 0, false] or !alive _pilot1) && ((getPos _pilot2) inArea [getMarkerpos "Base", 100, 100, 0, false] or !alive _pilot2)
 };
//set task state
if(alive _pilot1 and alive _pilot2)then{
	["Task_03_1","SUCCEEDED"] call BIS_fnc_taskSetState;
	}else{
		["Task_03_1","FAILED"] call BIS_fnc_taskSetState;
		};
//delete task
sleep 10;
deleteVehicle _pilot1;
deleteVehicle _pilot2;
["Task_03"] call BIS_fnc_deleteTask;
["Task_03_1"] call BIS_fnc_deleteTask;
