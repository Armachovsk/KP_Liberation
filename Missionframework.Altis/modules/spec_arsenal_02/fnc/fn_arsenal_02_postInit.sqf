if (isServer) then {
    [{!isNil "KPLIB_presetArsenal"}, {
        ["SPEC_arsenal_02_compile", KPLIB_presetArsenal] call CBA_fnc_serverEvent;
    }] call CBA_fnc_waitUntilAndExecute;
};
