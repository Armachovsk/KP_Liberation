/*
    File: fn_crGlobalMsg.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-12-03
    Last Update: 2020-04-17
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        No description added yet.

    Parameter(s):
        _msgType    - Type of message to display                    [NUMBER, defaults to -1]
        _data       - Data which is needed in the selected msgType  [ARRAY, defaults to []]

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_msgType", -1, [0]],
    ["_data", [], []]
];

switch (_msgType) do {
    case 0: {localize "STR_CR_VEHICLEMSG" call CBA_fnc_notify;};
    case 1: {(format [localize "STR_CR_BUILDINGMSG", (_data select 0)]) call CBA_fnc_notify;};
    case 2: {(format [localize "STR_CR_KILLMSG", (_data select 0)]) call CBA_fnc_notify;};
    case 3: {(format [localize "STR_CR_RESISTANCE_KILLMSG", (_data select 0)]) call CBA_fnc_notify;};
    case 4: {(format [localize "STR_CR_HEALMSG", (_data select 0)]) call CBA_fnc_notify;};
    case 5: {(format ["Sector: %1, Incoming from: %2", (_data select 0), (_data select 1)]) call CBA_fnc_notify;};
    default {[format ["globalMsg without valid msgType - %1", _msgType], "RESISTANCE"] remoteExecCall ["KPLIB_fnc_common_log", 2];};
};

true
