params [
    ["_vehicle", objNull, [objNull]]
];

switch (typeOf _vehicle) do {
    case KPLIB_preset_respawnTruckF: {
        if ([_vehicle] call SPEC_fnc_core_isCBPS) then {
            // Set vehicle as mobile respawn
            _vehicle setVariable ["KPLIB_respawn", false, true];
            _vehicle setVariable ["ace_medical_isMedicalFacility", false, true];
            // Add redeploy action globaly and for JIP
            _vehicle remoteExecCall ["removeAllActions", 0, _vehicle];

            private _onAction = '
                params ["_target", "_caller", "", "_action", "_name", "", "", "", "", "", "_event"];
                if (_action == "User" || _action == "UserType") then {
                    if (_event == "Action") then {
                        private _closeTentText = getText (configfile >> "CfgVehicles" >> (typeOf vehicle _target) >> "UserActions" >> "close_tent" >> "displayName");
                        private _openTentText = getText (configfile >> "CfgVehicles" >> (typeOf vehicle _target) >> "UserActions" >> "open_tent" >> "displayName");

                        if (_closeTentText isEqualTo _name) then {
                            ["SPEC_core_cbpsChanged", [vehicle _target, _name]] call CBA_fnc_globalEvent;
                        };
                        if (_openTentText isEqualTo _name) then {
                            ["SPEC_core_cbpsChanged", [vehicle _target, _name]] call CBA_fnc_globalEvent;
                        };
                    };
                };
                false
            ';

            inGameUISetEventHandler ["PrevAction", ""];
            inGameUISetEventHandler ["NextAction", ""];
            inGameUISetEventHandler ["Action", ""];
            inGameUISetEventHandler ["PrevAction", _onAction];
            inGameUISetEventHandler ["NextAction", _onAction];
            inGameUISetEventHandler ["Action", _onAction];
        };
    };
};

true
