params ["_arsenalCondition"];

private _actionArray = [localize "STR_KPLIB_ACTION_ARSENAL", {[] call SPEC_fnc_arsenal_openDialog}, nil, -801, false, true, "", _arsenalCondition, 10];
[_actionArray] call CBA_fnc_addPlayerAction;

true
