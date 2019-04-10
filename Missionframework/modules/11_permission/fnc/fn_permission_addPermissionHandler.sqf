/*
    KPLIB_fnc_permission_addPermissionHandler

    File: fn_permission_addPermission.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-12-09
    Last Update: 2019-04-10
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Adds a new permission to the permission system.

    Parameter(s):
        _permission     - Permission name                               [STRING, defaults to ""]
        _condition      - Code which is executed on permission check    [CODE, defaults to {false}]
        _string         - Permission stringtable path                   [STRING, defaults to ""]
        _default        - Default permission                            [BOOL, defaults to false]
        _group          - Permission group name                         [STRING, defaults to "Misc"]
        _groupString    - Permission group stringtable path             [STRING, defaults to "STR_KPLIB_PERMISSION_GROUPMISC"]
        _vehCheck       - Vehicle clasnames for the check               [ARRAY, defaults to []]

    Returns:
        Function reached the end [BOOL]
*/

if (!isServer) exitWith {};

params [
    ["_permission", "", [""]],
    ["_code", {false}, [{}]],
    ["_string", "", [""]],
    ["_default", false, [false]],
    ["_group", "Misc", [""]],
    ["_groupString", "STR_KPLIB_PERMISSION_GROUPMISC", [""]],
    ["_vehCheck", [], [[]]]
];

_permission = toLower _permission;

private _types = KPLIB_permission_data getVariable ["permissionTypes", []];
_types pushBackUnique _permission;

private _groups = KPLIB_permission_data getVariable ["permissionGroups", []];
private _index = _groups findIf {
    (_x select 0) isEqualTo _group
};

if (_index isEqualTo -1) then {
    _groups pushBack [_group, _groupString, [_permission]];
} else {
    ((_groups select _index) select 2) pushBackUnique _permission;
};

// Read the Variable
private _data = [[_code], _string, _vehCheck];
(_data select 0) append ((KPLIB_permission_data getVariable [_permission, []]) select 0);

if !(_string isEqualTo "") then {
    _data set [1, _string];
};

// Write the Variable
KPLIB_permission_data setVariable [_permission, _data, true];

// Emit permissions added event
["KPLIB_permission_newPH", [_permission,_default]] call CBA_fnc_globalEvent;

// Set data in namespace
KPLIB_permission_data setVariable ["permissionTypes", _types, true];
KPLIB_permission_data setVariable ["permissionGroups", _groups, true];

true
