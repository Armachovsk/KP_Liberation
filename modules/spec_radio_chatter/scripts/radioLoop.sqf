if (!isNil "SPEC_eden_radio_chatter") then {
    [{
        if (!isNil "SPEC_eden_radio_chatter") then {
            [{(player distance2D SPEC_eden_radio_chatter) < 10}, {
                [SPEC_eden_radio_chatter] call SPEC_fnc_radio_chatter_play;
            }] call CBA_fnc_waitUntilAndExecute;
        };
    }, 40, []] call CBA_fnc_addPerFrameHandler;
};
