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

if (KPLIB_param_presetArsenal == 3) then {
    [{!isNil "SPEC_arsenal_blacklisted"}, {
        private _arsenalCondition = '_target isEqualTo _originalTarget && !(_originalTarget getVariable ["KPLIB_fob", ""] isEqualTo "") && count SPEC_arsenal_blacklisted > 0';
        [_arsenalCondition] call SPEC_fnc_arsenal_playerAction;
    }, []] call CBA_fnc_waitUntilAndExecute;
} else {
    private _arsenalCondition = '_target isEqualTo _originalTarget && !(_originalTarget getVariable ["KPLIB_fob", ""] isEqualTo "")';
    [_arsenalCondition] call SPEC_fnc_arsenal_playerAction;
};

true
