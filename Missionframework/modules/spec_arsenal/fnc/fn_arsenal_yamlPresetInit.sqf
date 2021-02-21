SPEC_arsenal_blacklistedCommon = [];
SPEC_arsenal_blacklisted = [];

["common"] call SPEC_fnc_arsenal_compilePreset;
[SPEC_arsenal_yamlPresetArr select SPEC_param_arsenalPresetYaml] call SPEC_fnc_arsenal_compilePreset;

SPEC_arsenal_blacklisted append SPEC_arsenal_blacklistedCommon;
