params [
    ["_sector", "", [""]]
];

private _startpos = (markerPos _sector) getPos [(1200 + (round (random 400))), (random 360)];

private _incDir = (markerPos _sector) getDir _startpos;
private _incString = "unknown";

if (_incDir < 23) then {
    _incString = "N";
} else {
    if (_incDir < 68) then {
        _incString = "NE";
    } else {
        if (_incDir < 113) then {
            _incString = "E";
        } else {
            if (_incDir < 158) then {
                _incString = "SE";
            } else {
                if (_incDir < 203) then {
                    _incString = "S";
                } else {
                    if (_incDir < 248) then {
                        _incString = "SW";
                    } else {
                        if (_incDir < 293) then {
                            _incString = "W";
                        } else {
                            if (_incDir < 338) then {
                                _incString = "NW";
                            } else {
                                _incString = "N";
                            };
                        };
                    };
                };
            };
        };
    };
};

[5, [(markerText _sector), _incString]] remoteExec ["SPEC_fnc_resistance_civRepGlobalMsg"];

private _spawnedGroups = [];
private _grp = [_startpos] call SPEC_fnc_resistance_spawnGuerillaGroup;

while {(count (waypoints _grp)) != 0} do {deleteWaypoint ((waypoints _grp) select 0);};
{_x doFollow (leader _grp)} forEach (units _grp);

private _waypoint = _grp addWaypoint [markerpos _sector, 100];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointSpeed "FULL";
_waypoint setWaypointBehaviour "AWARE";
_waypoint setWaypointCombatMode "YELLOW";
_waypoint setWaypointCompletionRadius 30;
_waypoint = _grp addWaypoint [markerpos _sector, 200];
_waypoint setWaypointSpeed "NORMAL";
_waypoint setWaypointType "SAD";
_waypoint = _grp addWaypoint [markerpos _sector, 200];
_waypoint setWaypointSpeed "NORMAL";
_waypoint setWaypointType "SAD";
_waypoint = _grp addWaypoint [markerpos _sector, 200];
_waypoint setWaypointSpeed "NORMAL";
_waypoint setWaypointType "SAD";
_waypoint = _grp addWaypoint [markerpos _sector, 200];
_waypoint setWaypointSpeed "NORMAL";
_waypoint setWaypointType "CYCLE";

_spawnedGroups pushBack _grp;

if (((random 100) <= 25) && !(KPLIB_preset_vehLightArmedPlR isEqualTo [])) then {
    private _vehicle = (selectRandom KPLIB_preset_vehLightArmedPlR) createVehicle _startpos;

    // TODO: what purpose?
    // [_vehicle] call KPLIB_fnc_allowCrewInImmobile;

    private _grp = [_startpos, 2] call SPEC_fnc_resistance_spawnGuerillaGroup;
    ((units _grp) select 0) moveInDriver _vehicle;
    ((units _grp) select 1) moveInGunner _vehicle;

    _waypoint = _grp addWaypoint [markerpos _sector, 100];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointBehaviour "AWARE";
    _waypoint setWaypointCombatMode "YELLOW";
    _waypoint setWaypointCompletionRadius 30;
    _waypoint = _grp addWaypoint [markerpos _sector, 300];
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointType "SAD";
    _waypoint = _grp addWaypoint [markerpos _sector, 300];
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointType "SAD";
    _waypoint = _grp addWaypoint [markerpos _sector, 300];
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointType "SAD";
    _waypoint = _grp addWaypoint [markerpos _sector, 300];
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointType "CYCLE";

    _spawnedGroups pushBack _grp;
};

["KPLIB_sector_deactivated", {
    private _strengthChanged = false;
    {
        if (!isNull _x) then {
            {
                if (alive _x) then {
                    deleteVehicle _x;
                    SPEC_guerillaStrength = SPEC_guerillaStrength + 2;
                    _strengthChanged = true;
                };
            } forEach (units _x);
        };
    } forEach (_thisArgs select 0);

    if (!isServer && _strengthChanged) then {
        publicVariableServer "SPEC_guerillaStrength";
    };
}, [_spawnedGroups]] call CBA_fnc_addEventHandlerArgs;

true
