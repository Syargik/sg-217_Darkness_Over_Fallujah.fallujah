params ["_screen"];
// Функция для генерации случайной цифры и отображения её на экране
// Генерация случайной цифры от 0 до 9
private _randomNumber = floor (random 10);

// Путь до текстуры цифры
private _texturePath = format ["images\%1.paa", _randomNumber];

// Отображение цифры на экране
_screen setObjectTexture [0, _texturePath];

// Хранение значения цифры в переменной экрана
_screen setVariable ["generatedCode", _randomNumber];