// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhsusf_200Rnd_556x45_box";
_unit addWeapon "rhs_weap_m249_pip_S";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
_unit addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
_unit addPrimaryWeaponItem "mkk_hlc_muzzle_KX3_comp";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "AGE_Fatigues_Black_Gloves";

// Vest with items:
_unit addVest "JCA_MCRP_V_CarrierRigKBT_01_combat_black_F";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_f1';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};
_unit addItemToVest 'rhsusf_200Rnd_556x45_box';
_unit addItemToVest "ACE_Flashlight_XL50";

// Backpack with items:
_unit addBackpack "B_AssaultPack_blk";
for '_i' from 1 to 2 do { _unit addItemToBackpack 'rhsusf_200Rnd_556x45_box';};
_unit addHeadgear "LOP_H_Shemag_BLK";
_unit addWeapon "ACE_NVG_Gen4_Black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";