levers = [lever1, lever2, lever3, lever4];
screens = [screen1, screen2, screen3, screen4];

for "_i" from 0 to (count levers - 1) do { 
	[
		levers select _i,
		"Активировать",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
		"(_this distance _target < 3) && playerSide == east",
		"_caller distance _target < 3",
		{},
		{},
		{
			[screens select (_arguments select 0)] call syargik_fnc_code_system;
			hint format["Рычаг %1 активирован", (_arguments select 0) + 1]; 
			["mkk_logger_replayMessage", ["mission_message", "Рычаг %1 активирован"]] call CBA_fnc_serverEvent;
		},
		{},
		[_i],
		5,
		0,
		true,
		false
	] call BIS_fnc_holdActionAdd; 
};