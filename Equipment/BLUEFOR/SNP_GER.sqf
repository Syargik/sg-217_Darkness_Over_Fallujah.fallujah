// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "mkk_20Rnd_M80A1_762x51_HK417_D";
_unit addWeapon "mkk_arifle_HK417_20_Desert";
_unit addPrimaryWeaponItem "rhsusf_acc_su230a";
_unit addPrimaryWeaponItem "BWA3_bipod_Harris_tan";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_B";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "BWA3_Uniform2_Tropen";

// Vest with items:
_unit addVest "BWA3_Vest_Grenadier_Tropen";
for '_i' from 1 to 7 do { _unit addItemToVest 'mkk_20Rnd_M80A1_762x51_HK417_D';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
_unit addItemToVest "ACE_Flashlight_XL50";

// Backpack with items:
_unit addBackpack "BWA3_AssaultPack_Tropen";
_unit addHeadgear "PBW_Helm3_UN";
_unit addWeapon "ACE_NVG_Gen4_Black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";