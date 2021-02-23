params [
    ["_vehicle", objNull, [objNull]],
    ["_action", "", [""]]
];

private _closeTentText = getText (configfile >> "CfgVehicles" >> (typeOf _vehicle) >> "UserActions" >> "close_tent" >> "displayName");
private _openTentText = getText (configfile >> "CfgVehicles" >> (typeOf _vehicle) >> "UserActions" >> "open_tent" >> "displayName");

if (_action isEqualTo _openTentText) exitWith {
    // Set vehicle as mobile respawn
    _vehicle setVariable ["KPLIB_respawn", true, true];
    _vehicle setVariable ["ace_medical_isMedicalFacility", true, true];
    // Add redeploy action globaly and for JIP
    [
        _vehicle,
        "STR_KPLIB_ACTION_REDEPLOY",
        [{["KPLIB_respawn_requested", _this] call CBA_fnc_localEvent}, nil, -801, false, true, "", "_this == vehicle _this", 10]
    ] remoteExecCall ["KPLIB_fnc_common_addAction", 0, _vehicle];
};

if (_action isEqualTo _closeTentText) exitWith {
    // Set vehicle as mobile respawn
    _vehicle setVariable ["KPLIB_respawn", false, true];
    _vehicle setVariable ["ace_medical_isMedicalFacility", false, true];
    // Add redeploy action globaly and for JIP
    _vehicle remoteExecCall ["removeAllActions", 0, _vehicle];
};

false
