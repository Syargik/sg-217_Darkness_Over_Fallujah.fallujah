// Получаем переданное значение из _this (введённый код)
private _enteredCode = (_this select 0); 

// Собираем правильный код из всех экранов
_screens = [screen1, screen2, screen3, screen4]; // Передаём список экранов
private _correctCode = "";
{
    _correctCode = _correctCode + str (_x getVariable ["generatedCode", 0]);
} forEach _screens;

// Сравниваем введённый код с правильным
if (_enteredCode == _correctCode) then {
    hint "Код введён верно!";
    missionNamespace setVariable ["code_status", 1, true];
} else {
    hint "Код неправильный!";
};
