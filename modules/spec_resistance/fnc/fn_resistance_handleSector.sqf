params [
    ["_sector", "", [""]]
];

if (!(_sector in KPLIB_sectors_blufor)) then {
    if (_sector in KPLIB_sectors_metropolis ||
        _sector in KPLIB_sectors_military ||
        _sector in KPLIB_sectors_factory ||
        _sector in KPLIB_sectors_city ||
        _sector in KPLIB_sectors_tower
    ) then {
        if (((random 100) <= SPEC_param_resistanceSectorChance) && (([] call SPEC_fnc_resistance_crGetMulti) > 0)) then {
            ["SPEC_resistance_spawnGuerilla", [_sector]] call CBA_fnc_globalEvent;
        };
    };

    if (_sector in KPLIB_sectors_metropolis ||
        _sector in KPLIB_sectors_city
    ) then {
        ["SPEC_resistance_spawnCiv", [_sector]] call CBA_fnc_globalEvent;
    };

    if (SPEC_civRep < 0) then {
        private _iedcount = round (2 + (ceil (random 4)) * (round ((SPEC_civRep * -1) / 33)));
        ["SPEC_resistance_spawnIED", [_iedcount]] call CBA_fnc_globalEvent;
    };
};

true
