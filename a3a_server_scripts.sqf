CrititalLosesWest = 7; // потери для синих
CrititalLosesEast = 9; // потери для красных

missionNamespace setVariable ["a3a_endMissionTime", 7200, true]; // 7200 - время в секундах

[] spawn {
	waitUntil {sleep 10; a3a_var_started};
	while {isNil "srv_triggerFinished"} do { 
	sleep 10;
			
		if ((east countside playableUnits) < CrititalLosesEast) then {
			srv_triggerFinished = true;
		["Повстанцы были разбиты, победа обороны!" , west] call a3a_fnc_endMission;}; // Победа WEST
		
		if ((west countside playableUnits) < CrititalLosesWest) then {
			srv_triggerFinished = true;
		["Объединеные силы разбиты, победа атаки!", east] call a3a_fnc_endMission;}; // Победа EAST
		
		if (mkk_platform_missionTime >= a3a_endMissionTime) then { 
			srv_triggerFinished = true;
		["Система была отключена! Время вышло!", west] call a3a_fnc_endMission;}; // Победа по окончанию таймера

		if (missionNamespace getVariable 'code_status' == 1) then {
			srv_triggerFinished = true;
		["Повстанцы получили доступ к энергосистеме!", east] call a3a_fnc_endMission;};
    };
};