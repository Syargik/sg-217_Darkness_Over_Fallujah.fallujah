// Массив классов уличных фонарей
_StreetLights = [
    "Land_lampa_ind_b",
    "Land_lampa_ind",
    "Land_lampa_ind_zerb",
    "Land_Lampa_sidl",
    "Land_Lampa_sidl_3"
];

// Найти все объекты указанных классов в радиусе 10000 метров от игрока
private _lamps = nearestObjects [player, _StreetLights, 10000];

// Для каждого найденного фонаря установить повреждение хитпоинтов
{
    _x setHit ["light_1_hitpoint", 0.97];
    _x setHit ["light_2_hitpoint", 0.97];
    _x setHit ["light_3_hitpoint", 0.97];
    _x setHit ["light_4_hitpoint", 0.97];
} forEach _lamps;
