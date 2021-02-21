/*
    SPEC_fnc_arsenal_setupPlayerActions

    File: fn_arsenal_setupPlayerActions.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-11-14
    Last Update: 2019-04-23
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html
    Public: No

    Description:
        Initialization of actions availible to players.

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/

// Actions avalible LOCALLY to player
// Arsenal action
SPEC_ArsenalAction = {
    private _arsenalCondition = '_target isEqualTo _originalTarget && !(_originalTarget getVariable ["KPLIB_fob", ""] isEqualTo "") && count SPEC_arsenal_blacklisted > 0';
    private _actionArray = [localize "STR_KPLIB_ACTION_ARSENAL", {[] call SPEC_fnc_arsenal_openDialog}, nil, -801, false, true, "", _arsenalCondition, 10];
    [_actionArray] call CBA_fnc_addPlayerAction;
};

if (KPLIB_param_presetArsenal == 3) then {
    [{!isNil "SPEC_arsenal_blacklisted"}, {

        call SPEC_ArsenalAction;

    }, []] call CBA_fnc_waitUntilAndExecute;
} else {
    call SPEC_ArsenalAction;
};

true
