/*

[pos,1,true,true,[100,200,300],2000] call SPEC_fnc_other_missions_zoneGref;

cycle 			= количество циклов скрипта. Сколько раз он респанёт юнитов
unit_building 	= активирует или отключает наличие юнитов в зданиях(true/false)
vehicle			= активирует или отключает создание техники (true/false)
Radius_Patrol	= радиус патруля (минимальный, средний, максимальный)
Radius_activation = минимальное расстояние, на котором активируется создание юнитов от игрока

*/

_pos = _this select 0;

//rapporto limit con Nonmuovere e DecMezzo, per avere maggiore equilibrio, 5/1.
_Origine	=	0;
_limit		= _this select 1;
_ActiveFH 	= _this select 2;
_Use_Mezzo	= _this select 3;
/*
_nameTrigger= _this select 4;
*/
_Radius_Patrol = _this select 4;
_Radius_activation=_this select 5;

_limit_vehicle 	= [_limit+5,0] call BIS_fnc_cutDecimals;

waituntil {((player distance _pos)<=_Radius_activation)};

//==================================================================

While {_Origine<_limit} do
	{

_Raggio = floor random _Radius_Patrol; //raggio pattugliamento gruppi-ray patrol groups

_DecMezzo 	=	floor random _limit_vehicle; //creazione casuale mezzi-random vehicle creation
_DecEdifici = 	floor random 3; // casuale posizionamento unità in edifici-random units positioning in buildings
_Stanza 	=	floor random 5; //livello posizionamento unità nell'edificio-positioning unit level in the building
_NonMuovere =	floor random 5; //decide a random chi deve pattugliare o no-decides to random who has to patrol or not

_myGroup = createGroup EAST;
{
_soldierName = _x select 0;
_soldierRank = _x select 1;

_soldato = [
"CPC_ME_O_KAM_soldier_AT",
"CPC_ME_O_KAM_soldier_AT",
"CPC_ME_O_KAM_soldier_AT",
"CPC_ME_O_KAM_soldier_AT",
"CPC_ME_O_KAM_soldier_AA",
"CPC_ME_O_KAM_soldier_MG",
"CPC_ME_O_KAM_soldier_AR",
"CPC_ME_O_KAM_soldier_Medic",
"CPC_ME_O_KAM_soldier_M",
"CPC_ME_O_KAM_soldier_MNSPU",
"CPC_ME_O_KAM_soldier_l1a1",
"CPC_ME_O_KAM_soldier_GL",
"CPC_ME_O_KAM_soldier_NSPU",
"CPC_ME_O_KAM_soldier_LAT",
"CPC_ME_O_KAM_soldier",
"CPC_ME_O_KAM_soldier_AA",
"CPC_ME_O_KAM_soldier_AA",
"CPC_ME_O_KAM_soldier_AA"
] call BIS_fnc_selectRandom;
_tempSoldier = _myGroup createUnit [ _soldato, _pos, [], 0, "FORM" ];
_tempSoldier setRank _soldierRank;
_tempSoldier setVehicleVarName _soldierName;
missionNamespace setVariable [ _soldierName, _tempSoldier ];
publicVariable _soldierName;
}forEach [
[ "soldier1", "SERGEANT" ],
[ "soldier2", "PRIVATE" ]



];

//player sidechat format["numero: %1", _DecEdifici];
if (_DecMezzo ==0 && _Use_Mezzo) then {
_veicolo = [
"CPC_ME_O_KAM_T72BB",
"CPC_ME_O_KAM_T72B",
"CPC_ME_O_KAM_ZSU",
"CPC_ME_O_KAM_ural_Zu23",
"CPC_ME_O_KAM_BMP1D",
"CPC_ME_O_KAM_BMP2D",
"CPC_ME_O_KAM_BRDM2"
] call BIS_fnc_selectRandom;

// crea veicolo e l'equipaggio sale
_Raggio =_Raggio *5;
_truck = _veicolo createVehicle getPos soldier1;
//_truck setVehicleLock "LOCKED";
soldier1 moveInDriver _truck;
soldier2 moveInCargo _truck;
soldier2 assignAsGunner _truck;

};

if ((_ActiveFH) AND (_DecEdifici==0) AND !(_DecMezzo ==0)) then {
	doStop [soldier1, soldier2];
	soldier1 setpos (nearestBuilding soldier1 buildingPos _Stanza);
	soldier2 setpos (nearestBuilding soldier2 buildingPos _Stanza+2);

	} else{
					if (_NonMuovere ==1) then {}
				else {

if (isClass(configFile >> "CfgPatches" >> "cba_main")) then{
[_mygroup, _mygroup, _Raggio, 5, "MOVE", "SAFE", "YELLOW", "LIMITED", "STAG COLUMN", "soldier1 spawn CBA_fnc_searchNearby", [3,6,9]] call CBA_fnc_taskPatrol;

} else {
	[_mygroup, getPos _Tgren, _Raggio] call bis_fnc_taskPatrol; //patrol vanilla
};
					};
					};
			_Origine=_Origine+1;
}; //parentesi collegata al ciclo
/*
		};
