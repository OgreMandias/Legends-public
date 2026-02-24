::Legends.Armor.Mercenary <- {};

::Legends.Armor.Mercenary.mercenary_archer_armor_00 <- {
	ID = "mercenary_archer_armor_00", // goes with helm 00
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
			[9, ""],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_archer_armor_00);

::Legends.Armor.Mercenary.mercenary_archer_armor_01 <- {
	ID = "mercenary_archer_armor_01", // goes with helm 00
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_quilted_aketon", 26]
		],
		Chain = [
		],
		Plate = [
			[1, "plate/legend_armor_leather_jacket", 2],
			[1, "plate/legend_armor_leather_jacket_simple", 2]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
			[9, ""],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_archer_armor_01);

::Legends.Armor.Mercenary.mercenary_infantry_armor_00 <- {
	ID = "mercenary_infantry_armor_00", // goes with helm 00 ; 200ish
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[4, "chain/legend_armor_hauberk_sleeveless"], // 65
			[4, "chain/legend_armor_basic_mail"], // 85
			[3, "chain/legend_armor_hauberk"], // 95
			[1, "chain/legend_armor_hauberk_full"] // 115
		],
		Plate = [
			[1, "plate/legend_armor_leather_padded"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_infantry_armor_00);

::Legends.Armor.Mercenary.mercenary_infantry_armor_01 <- {
	ID = "mercenary_infantry_armor_01",
	Script = "",
	Sets = [{
		Cloth = [
			[5, "cloth/legend_armor_tunic", 4],
			[2, "cloth/legend_armor_gambeson", [1,2]],
			[2, "cloth/legend_armor_quilted_aketon", [1,26]],
			[1, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_hauberk_sleeveless"], // 65
			[1, "chain/legend_armor_basic_mail"] // 85
		],
		Plate = [
			[1, "plate/legend_armor_leather_lamellar"],
			[1, "plate/legend_armor_leather_lamellar_reinforced"],
			[1, "plate/legend_armor_leather_riveted_light"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_infantry_armor_01);

::Legends.Armor.Mercenary.mercenary_crossbow_armor_00 <- {
	ID = "mercenary_crossbow_armor_00",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson", 1]
		],
		Chain = [
			[1, "chain/legend_armor_hauberk_sleeveless"], // 65
			[1, "chain/legend_armor_reinforced_mail_shirt"], // 85
			[1, "chain/legend_armor_mail_shirt"], // 85
			[1, "chain/legend_armor_short_mail"] // 85
		],
		Plate = [
			[1, "plate/legend_armor_leather_lamellar"],
			[1, "plate/legend_armor_leather_lamellar_reinforced"],
			[1, "plate/legend_armor_leather_riveted_light"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
			[12, ""],
			[1, "armor_upgrades/legend_metal_pauldrons_upgrade"],
			[1, "armor_upgrades/legend_double_mail_upgrade"],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_crossbow_armor_00);

::Legends.Armor.Mercenary.mercenary_spearman_armor_00 <- {
	ID = "mercenary_spearman_armor_00",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson", 1],
			[2, "cloth/legend_armor_quilted_aketon", [1,26]]
		],
		Chain = [
			[1, "chain/legend_armor_hauberk_sleeveless"], // 65
			[1, "chain/legend_armor_reinforced_mail_shirt"], // 85
			[1, "chain/legend_armor_mail_shirt"], // 85
			[1, "chain/legend_armor_short_mail"] // 85
		],
		Plate = [
			[1, "plate/legend_armor_leather_padded"],
			[1, "plate/legend_armor_leather_jacket", 3],
			[1, "plate/legend_armor_leather_riveted_light"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
			[12, ""],
			[1, "armor_upgrades/legend_metal_pauldrons_upgrade"],
			[1, "armor_upgrades/legend_double_mail_upgrade"],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_spearman_armor_00);

::Legends.Armor.Mercenary.mercenary_spearman_armor_01 <- {
	ID = "mercenary_spearman_armor_01",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson", 1],
			[2, "cloth/legend_armor_quilted_aketon", [1,26]],
		],
		Chain = [
		],
		Plate = [
			[1, "plate/legend_armor_southern_plate_full"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_spearman_armor_01);

::Legends.Armor.Mercenary.mercenary_leader_armor_uncommon_00 <- {
	ID = "mercenary_leader_armor_uncommon_00",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_tunic"] //not shown doesn't matter variant
		],
		Chain = [
			[1, "chain/legend_armor_reinforced_mail_shirt"]
		],
		Plate = [
			[1, "plate/legend_armor_thick_plated_barbarian_armor"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_leader_armor_uncommon_00);

::Legends.Armor.Mercenary.mercenary_leader_armor_00 <- {
	ID = "mercenary_leader_armor_00",
	Script = "",
	Sets = [{
		Cloth = [ //not seen underneath but we copy to have some variety in armor values here
			[1, "cloth/legend_armor_tunic", 4],
			[2, "cloth/legend_armor_gambeson", [1,2]],
			[2, "cloth/legend_armor_quilted_aketon", [1,26]],
			[1, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_reinforced_mail"],
			[1, "chain/legend_armor_hauberk"], // 95
			[1, "chain/legend_armor_hauberk_full"] // 115
		],
		Plate = [
			[1, "plate/legend_armor_leather_brigandine"],
			[1, "plate/legend_armor_leather_brigandine_hardened"],
			[1, "plate/legend_armor_leather_brigandine_hardened_full"],
			[1, "plate/legend_armor_leather_riveted"],
		],
		Cloak = [
		],
		Tabard = [
			[4, ""],
			[1, "tabard/legend_armor_southern_shoulder_cloth", 4]
		],
		Attachments =[
			[9, ""],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_leader_armor_00);

::Legends.Armor.Mercenary.mercenary_leader_armor_gilded_00 <- {
	ID = "mercenary_leader_armor_gilded_00",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_southern_gladiator_harness"]
		],
		Chain = [
		],
		Plate = [
			[1, "plate/legend_armor_plate_full_greaves_named"]
		],
		Cloak = [
			[1, "cloak/legend_armor_noble_vest"]
		],
		Tabard = [
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_leader_armor_gilded_00);

::Legends.Armor.Mercenary.mercenary_billman_armor_00 <- {
	ID = "mercenary_billman_armor_00",
	Script = "",
	Sets = [{
		Cloth = [ //not seen underneath but we copy to have some variety in armor values here
			[1, "cloth/legend_armor_tunic", 4]
		],
		Chain = [
			[1, "chain/legend_armor_reinforced_mail"],
			[1, "chain/legend_armor_basic_mail"],
			[1, "chain/legend_armor_hauberk"], // 95
			[1, "chain/legend_armor_hauberk_full"] // 115
		],
		Plate = [
			[1, "plate/legend_armor_leather_padded"],
			[1, "plate/legend_armor_leather_lamellar_harness_reinforced"],
			[1, "plate/legend_armor_leather_lamellar"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
			[9, ""],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_billman_armor_00);

::Legends.Armor.Mercenary.mercenary_longbow_armor_00 <- {
	ID = "mercenary_longbow_armor_00",
	Script = "",
	Sets = [{
		Cloth = [ //not seen underneath but we copy to have some variety in armor values here
			[1, "cloth/legend_armor_gambeson", [1,3]],
		],
		Chain = [
		],
		Plate = [
			[1, "plate/legend_armor_leather_scale"],
			[1, "plate/legend_armor_leather_riveted_light"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments =[
			[9, ""],
			[1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Mercenary.mercenary_longbow_armor_00);

