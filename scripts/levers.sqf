	[
    	lever1,                                                                                         // Объект, к которому привязано действие
    	"Активировать",                                                                               	// Название действия
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",                            		// Значок действия, отображаемый на экране
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",                            		// Значок прогресса, отображаемый на экране
    	"(_this distance _target < 3) && playerSide == east",      										// Условие для отображения действия
    	"_caller distance _target < 3",                                                                 // Условие для прогресса
    	{},                                                                                             // Код, выполняемый при запуске действия
    	{},																								// Код, выполняемый при каждом тике прогресса
    	{[screen1] execVM 'scripts\code_system.sqf', hint str "Рычаг 1 активирован", 
		["mkk_logger_replayMessage", ["mission_message", "test"]] call CBA_fnc_serverEvent;},     		// Код, выполняемый по завершении
    	{},                                                                                             // Код, выполняемый при прерывании
    	[],                                                                                             // Аргументы, передаваемые скриптам как _this select 3
    	5,                                                                                              // Продолжительность действия [с]
    	0,                                                                                              // Приоритет
    	true,                                                                                           // Remove on completion
    	false                                                                                           // Показывать действие в бессознательном состоянии 
    ] call BIS_fnc_holdActionAdd;  

	[
    	lever2,
    	"Активировать",
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    	"(_this distance _target < 3) && playerSide == east",
    	"_caller distance _target < 3",
    	{},
    	{},
    	{[screen2] execVM 'scripts\code_system.sqf', hint str "Рычаг 2 активирован", 
		["mkk_logger_replayMessage", ["mission_message", "test"]] call CBA_fnc_serverEvent;},
    	{},
    	[],
    	5,
    	0,
    	true,
    	false
    ] call BIS_fnc_holdActionAdd;  

	[
    	lever3,
    	"Активировать",
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    	"(_this distance _target < 3) && playerSide == east",
    	"_caller distance _target < 3",
    	{},
    	{},
    	{[screen3] execVM 'scripts\code_system.sqf', hint str "Рычаг 3 активирован", 
		["mkk_logger_replayMessage", ["mission_message", "test"]] call CBA_fnc_serverEvent;},
    	{},
    	[],
    	5,
    	0,
    	true,
    	false
    ] call BIS_fnc_holdActionAdd;  

	[
    	lever4,
    	"Активировать",
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
    	"(_this distance _target < 3) && playerSide == east",
    	"_caller distance _target < 3",
    	{},
    	{},
    	{[screen4] execVM 'scripts\code_system.sqf', hint str "Рычаг 4 активирован", 
		["mkk_logger_replayMessage", ["mission_message", "test"]] call CBA_fnc_serverEvent;},
    	{},
    	[],
    	5,
    	0,
    	true,
    	false
    ] call BIS_fnc_holdActionAdd;  