_pos_misison_first = selectRandom (KPLIB_sectors_city - KPLIB_sectors_player);
_pos_misison = getMarkerPos _pos_misison_first;

[
    _pos_misison,
    [KPLIB_o_officer,KPLIB_o_squadLeader],
    [KPLIB_o_rifleman,KPLIB_o_sentry,KPLIB_o_machinegunner,KPLIB_o_heavyGunner],
    200,
    getPos teleport_outside_3
] execVM "SPEC\other_missions\mission_12\mission.sqf";
