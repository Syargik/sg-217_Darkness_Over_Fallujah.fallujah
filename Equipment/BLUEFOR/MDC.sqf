// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "MKK_20Rnd_Fury_blk";
_unit addWeapon "MKK_XM7_BLK_G";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_H";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_DDPM";

// Vest with items:
_unit addVest "UK3CB_BAF_V_Osprey_DDPM8";
for '_i' from 1 to 6 do { _unit addItemToVest 'MKK_20Rnd_Fury_blk';};
for '_i' from 1 to 2 do { _unit addItemToVest 'MKK_20Rnd_Fury_RT_blk';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
_unit addItemToVest "ACE_Flashlight_XL50";

// Backpack with items:
_unit addBackpack "UK3CB_BAF_B_Kitbag_DDPM";
_unit addHeadgear "PBW_Helm3_UN";
_unit addWeapon "ACE_NVG_Gen4_Black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
