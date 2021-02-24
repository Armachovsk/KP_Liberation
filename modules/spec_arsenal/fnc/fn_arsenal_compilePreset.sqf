/*
    * Author: [SpecOps Liberation Dev Team - https://gitlab.com/armachovsk]
    *
    * Arguments:
    * 0: Name of preset without .yml <STRING>
    *
    * Return Value:
    * The return value <VOID>
    *
    * Example:
    * ["preset_name"] call specm_fnc_compileBlaclistPreset
    *
    * Public: No
*/
params ["_name"];

private _presetHash = [format ['modules/spec_arsenal/presets/%1.yml', _name]] call CBA_fnc_parseYAML;
private _blacklistedFromArsenal = [_presetHash, "default"] call CBA_fnc_hashGet;
SPEC_arsenal_blacklistedCommon append _blacklistedFromArsenal;

true
