::Legends.Armor.Standard <- {};

::Legends.Armor.Standard.apron <- {
	ID = "apron",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/apron"]
		],
		Chain = [
		],
		Plate = [
			[12, ""],
			[1, "plate/leather_jacket"],
			[1, "plate/leather_jacket_simple"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.apron);

::Legends.Armor.Standard.basic_mail_shirt <- {
	ID = "basic_mail_shirt",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
			[1, "cloth/tunic_wrap"],
			[1, "cloth/tunic_collar_thin"],
			[1, "cloth/tunic_collar_deep"],
			[1, "cloth/quilted_aketon"],
			[1, "cloth/gambeson", [1, 2, 3]],
		],
		Chain = [
			[1, "chain/mail_shirt"],
			[1, "chain/mail_shirt_simple"]
		],
		Plate = [
		],
		Cloak = [
			[5, ""],
			[1, "cloak/tabbed_hood"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.basic_mail_shirt);

::Legends.Armor.Standard.blotched_gambeson <- {
	ID = "blotched_gambeson",
	Script = "",
	Sets = [{
		Cloth = [
			[10, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/gambeson_wolf"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.blotched_gambeson);

::Legends.Armor.Standard.butcher_apron <- {
	ID = "butcher_apron",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/apron_butcher"],
		],
		Chain = [
		],
		Plate = [
			[12, ""],
			[1, "plate/leather_jacket"],
			[1, "plate/leather_jacket_simple"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.butcher_apron);

::Legends.Armor.Standard.coat_of_plates <- {
	ID = "coat_of_plates", //320 : 297 average, 65 + 110 + 170 + 10 = 355 absolute max, 240 absolute min
	Script = "",
	Sets = [{
		Cloth = [//60
			[1, "cloth/gambeson"], //65
			[5, "cloth/quilted_aketon"] //55
			// [5, "cloth/tunic"]
		],
		Chain = [//66.25 if [2,""] removed : 44 with : 80 with commented things
			// [2, ""],
			//[1, "chain/mail_shirt"], //50
			// [1, "chain/mail_shirt_simple"], //25
			[1, "chain/reinforced_mail"], //110
			[1, "chain/reinforced_mail_shirt"] //80
		],
		Plate = [//157 avg
			//[1, "plate/plate_chest"], //125
			[0, "plate/rotten_plate_chest"],
			[1, "plate/plate_cuirass"], //150
			[1, "plate/plate_full"], //160
			[3, "plate/plate_full_greaves"], //170
		],
		Cloak = [
			[20, ""],
			[1, "cloak/cloak"]
		],
		Tabard = [

		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.coat_of_plates);

::Legends.Armor.Standard.coat_of_scales <- {
	ID = "coat_of_scales", //300 : new max of 290ish, new avg of 240 ish,
	Script = "",
	Sets = [{
		Cloth = [//60
			[1, "cloth/gambeson"], //65
			[1, "cloth/quilted_aketon"] //55
			// [1, "cloth/tunic"] //20
		],
		Chain = [//66.25 if [2,""] removed : 44 with : 80 with commented things
			// [2, ""], //0
			[1, "chain/mail_shirt"], //50
			// [1, "chain/mail_shirt_simple"], //25
			[1, "chain/reinforced_mail"], //110
			[1, "chain/reinforced_mail_shirt"] //80
		]
		Plate = [//100
			[1, "plate/scale"], //100
			[1, "plate/scale_coat"], //120
			[0, "plate/rotten_scale_coat"],
			[1, "plate/scale_shirt"] //85
		],
		Cloak = [//1
			[20, ""],
			[1, "cloak/cloak"],
			[1, "cloak/tabbed_hood"],
			[1, "cloak/decorative_hood"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.coat_of_scales);

::Legends.Armor.Standard.cultist_leather_robe <- {
	ID = "cultist_leather_robe",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes"]
		],
		Chain = [
		],
		Plate = [
			[1, "plate/cult_armor"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.cultist_leather_robe);

::Legends.Armor.Standard.decayed_coat_of_plates <- {
	ID = "decayed_coat_of_plates",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth"],
			[1, "cloth/sackcloth_patched"],
			[1, "cloth/sackcloth_tattered"],
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/robes"],
		],
		Chain = [
			[2, ""],
			[1, "chain/reinforced_worn_mail"],
			[1, "chain/reinforced_worn_mail_shirt"],
			[1, "chain/rusty_mail_shirt"],
		],
		Plate = [
			[1, "plate/rotten_scale_coat"],
			[1, "plate/rotten_plate_chest"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.decayed_coat_of_plates);

::Legends.Armor.Standard.decayed_coat_of_scales <- {
	ID = "decayed_coat_of_scales",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth"],
			[1, "cloth/sackcloth_patched"],
			[1, "cloth/sackcloth_tattered"],
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/robes"],
		],
		Chain = [
			[2, ""],
			[1, "chain/reinforced_worn_mail"],
			[1, "chain/reinforced_worn_mail_shirt"],
			[1, "chain/rusty_mail_shirt"],
		],
		Plate = [
			[1, "plate/rotten_scale_coat"],
			[1, "plate/rotten_plate_chest"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.decayed_coat_of_scales);

::Legends.Armor.Standard.decayed_reinforced_mail_hauberk <- {
	ID = "decayed_reinforced_mail_hauberk",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth"],
			[1, "cloth/sackcloth_patched"],
			[1, "cloth/sackcloth_tattered"],
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/robes"],
		],
		Chain = [
			[1, "chain/reinforced_rotten_mail_shirt"],
			[1, "chain/reinforced_worn_mail"],
			[1, "chain/reinforced_worn_mail_shirt"],
		],
		Plate = [
			[1, ""],
			[1, "chain/hauberk_sleeveless"],
			[1, "chain/hauberk"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.decayed_reinforced_mail_hauberk);

::Legends.Armor.Standard.footman_armor <- {
	ID = "footman_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson"],
			[1, "cloth/quilted_aketon"],
		],
		Chain = [
			[1, "chain/basic_mail"], //85
			[1, "chain/mail_shirt"], //130
			[1, "chain/reinforced_mail"], //110
			[1, "chain/reinforced_mail_shirt"], //80
			[1, "chain/hauberk"], //95
			[1, "chain/short_mail"], //60
		],
		Plate = [
			[1, "plate/leather_riveted_light"],
		],
		Cloak = [
			[20, ""],
			[1, "cloak/cloak"],
			[1, "cloak/decorative_hood"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.footman_armor);

::Legends.Armor.Standard.gambeson <- {
	ID = "gambeson",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.gambeson);

::Legends.Armor.Standard.heavy_lamellar_armor <- {
	ID = "heavy_lamellar_armor", //285 ; 262 avg
	Script = "",
	Sets = [{
		Cloth = [//avg of 60
			[1, "cloth/gambeson"], // 65
			[1, "cloth/quilted_aketon"] //55
		],
		Chain = [//77avg
			[1, "chain/basic_mail"], //85
			[1, "chain/mail_shirt"], //50
			[1, "chain/reinforced_mail"], //110
			[1, "chain/reinforced_mail_shirt"], //80
			[1, "chain/short_mail"] //60
		],
		Plate = [//125
			[1, "plate/leather_lamellar_harness_heavy"], //130
			[1, "plate/leather_lamellar_harness_reinforced"], //150
			[1, "plate/leather_lamellar_heavy"], //165
			[1, "plate/leather_lamellar_reinforced"] //55
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.heavy_lamellar_armor);

::Legends.Armor.Standard.heraldic_mail <- {
	ID = "heraldic_mail",
	Script = "scripts/items/legend_armor/armor/legend_armor_heraldic", //Nothing in vanilla seems to use this?
	Sets = [{
		Cloth = [
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.heraldic_mail);

::Legends.Armor.Standard.lamellar_harness <- {
	ID = "lamellar_harness",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/quilted_aketon"]
		],
		Chain = [
			[1, ""],
			[1, "chain/basic_mail"],
			[1, "chain/mail_shirt"],
			[1, "chain/mail_shirt_simple"],
			[1, "chain/short_mail"],
		],
		Plate = [
			[1, "plate/leather_lamellar"],
			[1, "plate/leather_lamellar_harness_heavy"],
			[1, "plate/leather_lamellar_harness_reinforced"],
			[1, "plate/leather_lamellar_heavy"],
			[1, "plate/leather_lamellar_reinforced"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lamellar_harness);

::Legends.Armor.Standard.leather_lamellar <- {
	ID = "leather_lamellar",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/quilted_aketon"],
		],
		Chain = [
			[1, "chain/mail_shirt"],
			[1, "chain/mail_shirt_simple"],
		],
		Plate = [
			[1, "plate/leather_lamellar"], //50
			[1, "plate/leather_lamellar_reinforced"], //55
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.leather_lamellar);

::Legends.Armor.Standard.leather_scale_armor <- {
	ID = "leather_scale_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[1, "cloth/quilted_aketon"],
		],
		Chain = [
			[1, "chain/mail_shirt"],
			[1, "chain/mail_shirt_simple"],
		],
		Plate = [
			[1, "plate/leather_scale"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.leather_scale_armor);

::Legends.Armor.Standard.noble_scale_armor <- {
	ID = "noble_scale_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[1, "cloth/quilted_aketon"],
		],
		Chain = [
			[1, "chain/mail_shirt"],
			[1, "chain/mail_shirt_simple"],
		],
		Plate = [
			[1, "plate/noble_scale"],
		],
		Cloak = [
			[20, ""],
			[1, "cloak/cloak_duke"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.noble_scale_armor);

::Legends.Armor.Standard.leather_tunic <- {
	ID = "leather_tunic",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
		],
		Chain = [
		],
		Plate = [
			[1, "plate/leather_jacket"],
			[1, "plate/leather_jacket_simple"],
		],
		Cloak = [
			[20, ""],
			[1, "cloak/tabbed_hood"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.leather_tunic);

::Legends.Armor.Standard.leather_wraps <- {
	ID = "leather_wraps",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic"],
		],
		Chain = [
		],
		Plate = [
			[15, ""],
			[1, "plate/leather_jacket"],
			[5, "plate/leather_jacket_simple"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.leather_wraps);

::Legends.Armor.Standard.legend_blacksmith_apron <- {
	ID = "legend_blacksmith_apron",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/apron"],
		],
		Chain = [
		],
		Plate = [
			[15, ""],
			[1, "plate/leather_jacket"],
			[5, "plate/leather_jacket_simple"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_blacksmith_apron);

::Legends.Armor.Standard.legend_herbalist_robe <- {
	ID = "legend_herbalist_robe",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_herbalist_robe);

::Legends.Armor.Standard.monk_robe <- {
	ID = "monk_robe",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.monk_robe);

::Legends.Armor.Standard.legend_maid_apron <- {
	ID = "legend_maid_apron",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/apron"],
			[1, "cloth/sackcloth"],
			[1, "cloth/tunic"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_maid_apron);

::Legends.Armor.Standard.legend_maid_dress <- {
	ID = "legend_maid_dress",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/peasant_dress"],
			[1, "cloth/sackcloth"],
			[1, "cloth/tunic"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_maid_dress);

::Legends.Armor.Standard.legend_nun_robe_dark <- {
	ID = "legend_nun_robe_dark",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes_nun"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_nun_robe_dark);

::Legends.Armor.Standard.legend_nun_robe_light <- {
	ID = "legend_nun_robe_light",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes_nun"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_nun_robe_light);

::Legends.Armor.Standard.legend_rabble_fur <- {
	ID = "legend_rabble_fur",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/fur_rabble"]
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_rabble_fur);

::Legends.Armor.Standard.legend_rabble_tunic <- {
	ID = "legend_rabble_tunic",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth"],
			[1, "cloth/sackcloth_patched"],
			[1, "cloth/sackcloth_tattered"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_rabble_tunic);

::Legends.Armor.Standard.legend_seer_robes <- {
	ID = "legend_seer_robes",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes"],
			[1, "cloth/robes_magic"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_seer_robes);

::Legends.Armor.Standard.legend_taxidermist_apron <- {
	ID = "legend_taxidermist_apron",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/apron"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_taxidermist_apron);

::Legends.Armor.Standard.legend_vala_cloak <- {
	ID = "legend_vala_cloak",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/vala_robe"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_vala_cloak);

::Legends.Armor.Standard.vala_dress <- {
	ID = "vala_dress",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/vala_dress"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.vala_dress);

::Legends.Armor.Standard.legend_vampire_lord_armor <- {
	ID = "legend_vampire_lord_armor",
	Script = "scripts/items/armor/legend_vampire_lord_armor",
	Sets = [{
		Cloth = [
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_vampire_lord_armor);

::Legends.Armor.Standard.light_scale_armor <- {
	ID = "light_scale_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic"],
		],
		Chain = [
		],
		Plate = [
			[1, "plate/scale"],
			[1, "plate/scale_shirt"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.light_scale_armor);

::Legends.Armor.Standard.linen_tunic <- {
	ID = "linen_tunic",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.linen_tunic);

::Legends.Armor.Standard.mail_hauberk <- {
	ID = "mail_hauberk", // 120-180
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson"], //65
			[1, "cloth/quilted_aketon"], //55
			//[1, "cloth/tunic"], //20
		],
		Chain = [
			// [1, ""],
			[1, "chain/hauberk"], //95
			[1, "chain/hauberk_full"], //115
			[1, "chain/hauberk_sleeveless"], //65
		],
		Plate = [
		],
		Cloak = [
			[10, ""],
			[1, "cloak/decorative_hood"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mail_hauberk);

::Legends.Armor.Standard.mail_shirt <- {
	ID = "mail_shirt",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic"],
		],
		Chain = [
			[1, "chain/mail_shirt"],
			[1, "chain/mail_shirt_simple"],
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mail_shirt);

::Legends.Armor.Standard.noble_gear <- {
	ID = "noble_gear",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_noble"]
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
			[10, ""],
			[1, "cloak/noble_shawl"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.noble_gear);

::Legends.Armor.Standard.noble_mail_armor <- {
	ID = "noble_mail_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_noble"]
		],
		Chain = [
			[1, "chain/hauberk_sleeveless"],
			[1, "chain/mail_shirt"],
			[1, "chain/short_mail"],
		],
		Plate = [
			[1, "plate/leather_jacket_fine"],
		],
		Cloak = [
			[10, ""],
			[2, "cloak/noble_shawl"],
			[1, "cloak/sash"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.noble_mail_armor);

::Legends.Armor.Standard.noble_tunic <- {
	ID = "noble_tunic",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_noble"]
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
			[10, ""],
			[1, "cloak/noble_shawl"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.noble_tunic);

::Legends.Armor.Standard.padded_leather <- {
	ID = "padded_leather", // 80
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/apron"], // 30
			[1, "cloth/tunic_dark"], // 35
			[1, "cloth/quilted_aketon"], // 55
			[1, "cloth/thick_tunic"], // 30
		],
		Chain = [
		],
		Plate = [
			[1, "plate/leather_padded"], // 40
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.padded_leather);

::Legends.Armor.Standard.quilted_aketon <- {
	ID = "quilted_aketon", // 50
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
			[10, ""],
			[1, "cloak/decorative_hood"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.quilted_aketon);

::Legends.Armor.Standard.patched_mail_shirt <- {
	ID = "patched_mail_shirt", // 90
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/gambeson_wolf"], // 70
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[1, "chain/mail_shirt"], // 50
			[1, "chain/mail_shirt_simple"], // 25
			[1, "chain/reinforced_rotten_mail_shirt"], // 45
			[1, "chain/rusty_mail_shirt"], // 20
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.patched_mail_shirt);

::Legends.Armor.Standard.ragged_dark_surcoat <- {
	ID = "ragged_dark_surcoat", // 60
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_dark"], // 35
			[1, "cloth/thick_tunic"], // 30
		],
		Chain = [
		],
		Plate = [
			[10, ""],
			[3, "plate/animal_hide_armor"], // 30
			[3, "plate/leather_jacket"], // 25
			//(this is an error)	[1, "plate/leather_jacket_named"], // 30
		],
		Cloak = [
			[10, ""],
			[1, "cloak/tabbed_hood"],
			[1, "cloak/cloak_wooly_dark"],
			[1, "cloak/cloak_fur"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.ragged_dark_surcoat);

::Legends.Armor.Standard.ragged_surcoat <- {
	ID = "ragged_surcoat", // 55
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic"], // 20
		],
		Chain = [
			[2, ""],
			[1, "chain/rusty_mail_shirt"], // 20
		],
		Plate = [
			[1, "plate/leather_jacket"], // 25
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.ragged_surcoat);

::Legends.Armor.Standard.reinforced_mail_hauberk <- {
	ID = "reinforced_mail_hauberk", // 210
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[4, "chain/hauberk"], // 95
			[1, "chain/hauberk_full"], // 115
		],
		Plate = [
			[1, "plate/leather_brigandine"], // 65
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.reinforced_mail_hauberk);

::Legends.Armor.Standard.adorned_warriors_armor <- {
	ID = "adorned_warriors_armor", // 210
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[4, "chain/hauberk"], // 95
			[1, "chain/hauberk_full"], // 115
		],
		Plate = [
			[1, "plate/leather_riveted"], //
			[1, "plate/leather_riveted_light"], //
		],
		Cloak = [
			[1, "cloak/relic_hood"], //
		],
		Tabard = [
		],
		Attachments = [
			[1, "armor_upgrades/legend_armor_chain_and_mail_upgrade"], //
			[1, "armor_upgrades/legend_armor_sacred_shield_upgrade"], //
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.adorned_warriors_armor);

::Legends.Armor.Standard.sackcloth <- {
	ID = "sackcloth", // 10
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth"], // 10
			[1, "cloth/sackcloth_patched"], // 15
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.sackcloth);

::Legends.Armor.Standard.scale_armor <- {
	ID = "scale_armor", // 240
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[1, "chain/hauberk_sleeveless"], // 65
			[1, "chain/mail_shirt"], // 50
			[1, "chain/reinforced_worn_mail_shirt"], // 65
			[1, "chain/rusty_mail_shirt"], // 20
			[1, "chain/short_mail"], // 60
		],
		Plate = [
			[1, "plate/scale"], // 100
			[1, "plate/scale_coat"], // 120
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.scale_armor);

::Legends.Armor.Standard.sellsword_armor <- {
	ID = "sellsword_armor", // 260
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[1, "chain/hauberk"], // 95
			[1, "chain/hauberk_full"], // 115
			[1, "chain/reinforced_mail_shirt"], // 80
			[1, "chain/reinforced_worn_mail"], // 105
		],
		Plate = [
			[1, "plate/leather_riveted"], // 95
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.sellsword_armor);

::Legends.Armor.Standard.tattered_sackcloth <- {
	ID = "tattered_sackcloth", // 5
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth_tattered"], // 5
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.tattered_sackcloth);

::Legends.Armor.Standard.thick_dark_tunic <- {
	ID = "thick_dark_tunic", // 35
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_dark"], // 35
			[1, "cloth/thick_tunic"], // 30
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.thick_dark_tunic);

::Legends.Armor.Standard.thick_tunic <- {
	ID = "thick_tunic", // 35
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/thick_tunic"], // 30
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.thick_tunic);

::Legends.Armor.Standard.werewolf_hide_armor <- {
	ID = "werewolf_hide_armor", // 100
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson_wolf"], // 70
		],
		Chain = [
		],
		Plate = [
			[10, ""],
			[5, "plate/animal_hide_armor"], // 30
			[4, "plate/leather_jacket"], // 25
			// [1, "plate/leather_jacket_named"], // 30
			[4, "plate/leather_jacket_simple"], // 15
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			[1, "armor_upgrades/legend_direwolf_pelt_upgrade"], // 10
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.werewolf_hide_armor);

::Legends.Armor.Standard.werewolf_mail_armor <- {
	ID = "werewolf_mail_armor", // 140
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson_wolf"], // 70
		],
		Chain = [
			[1, "chain/basic_mail"], // 85
			[1, "chain/hauberk_sleeveless"], // 65
			[1, "chain/mail_shirt"], // 50
			[1, "chain/reinforced_mail_shirt"], // 80
			[1, "chain/reinforced_worn_mail_shirt"], // 65
			[1, "chain/short_mail"], // 60
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			[1, "armor_upgrades/legend_direwolf_pelt_upgrade"], // 10
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.werewolf_mail_armor);

::Legends.Armor.Standard.wizard_robe <- {
	ID = "wizard_robe", // 20
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes_magic"], // 40
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.wizard_robe);

::Legends.Armor.Standard.beautiful_robe <- {
	ID = "beautiful_robe", // 20
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes_wizard"], // 40
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.beautiful_robe);

::Legends.Armor.Standard.worn_mail_shirt <- {
	ID = "worn_mail_shirt", // 110
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[1, "chain/mail_shirt"], // 50
			[1, "chain/reinforced_rotten_mail_shirt"], // 45
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.worn_mail_shirt);

::Legends.Armor.Standard.seedmaster_noble_armor <- {
	ID = "seedmaster_noble_armor", // 110
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic"],
			[1, "cloth/robes"],
			[1, "cloth/tunic_noble"]
		],
		Chain = [
			[4, "chain/mail_shirt"], // 50
			[2, "chain/reinforced_mail"], // 50
			[4, "chain/reinforced_mail_shirt"]

		],
		Plate = [
			[4, "plate/leather_riveted_light"],
			[6, "plate/leather_scale"],
			[6, "plate/scale_shirt"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			[15, ""],
			[5, "armor_upgrades/legend_leather_neckguard_upgrade"],
			[5, "armor_upgrades/legend_mail_patch_upgrade"],
			[2, "armor_upgrades/legend_metal_pauldrons_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.seedmaster_noble_armor);

::Legends.Armor.Standard.citreneking_noble_armor <- {
	ID = "citreneking_noble_armor", // 110
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/robes"],
			[1, "cloth/tunic_noble"]
		],
		Chain = [
			[4, "chain/basic_mail"], // 50
			[2, "chain/reinforced_mail"], // 50
			[4, "chain/reinforced_mail_shirt"]

		],
		Plate = [
			[4, ""],
			[1, "plate/leather_riveted"],
			[1, "plate/leather_riveted_light"]
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			[5, ""],
			[5, "armor_upgrades/legend_leather_neckguard_upgrade"],
			[5, "armor_upgrades/legend_mail_patch_upgrade"],
			[2, "armor_upgrades/legend_joint_cover_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.citreneking_noble_armor);

::Legends.Armor.Standard.legend_noble_guard_armour <- {
	ID = "legend_noble_guard_armour",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_noble"],
		],
		Chain = [
			[1, "chain/reinforced_mail"],
		],
		Plate = [
			[1, "plate/plate_full_greaves"],
			[1, "plate/plate_full"],
		],
		Cloak = [
			[3, ""],
			[1, "cloak/cloak_heavy"],
		],
		Tabard = [
			[2, "tabard/tabard_noble"],
		],
		Attachments = [
		]
	}]

};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.legend_noble_guard_armour);

::Legends.Armor.Standard.man_at_arms_noble_armor <- {
	ID = "man_at_arms_noble_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson_named"]
		],
		Chain = [
			[1, "chain/hauberk"],
			[1, "chain/hauberk_full"]

		],
		Plate = [
			[1, "plate/plate_full_greaves"],
		],
		Cloak = [
			[2, ""],
			[2, "cloak/cloak_noble"],
		],
		Tabard = [
			[2, "tabard/tabard_noble"],
		],
		Attachments = [
			[5, ""],
			[5, "armor_upgrades/legend_leather_neckguard_upgrade"],
			[5, "armor_upgrades/legend_mail_patch_upgrade"],
			[2, "armor_upgrades/legend_joint_cover_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.man_at_arms_noble_armor);

::Legends.Armor.Standard.brown_hedgeknight_armor <- {
	ID = "brown_hedgeknight_armor", // 292
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]]
		],
		Chain = [
			[1, "chain/basic_mail"]

		],
		Plate = [
			[1, "plate/plate_chest"]
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/southern_wrap_left", 6]
		],
		Attachments = [
			[1, "armor_upgrades/legend_double_mail_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.brown_hedgeknight_armor);

::Legends.Armor.Standard.red_bandit_leader_armor <- {
	ID = "red_bandit_leader_armor", // 215
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", 17],
			[1, "cloth/quilted_aketon", 2]
		],
		Chain = [
			[1, "chain/basic_mail"]
		],
		Plate = [
			[1, "plate/scale"],
			[1, "plate/leather_brigandine_hardened_full"],
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/southern_wrap_left", 6]
		],
		Attachments = [
			[1, "armor_upgrades/legend_mail_patch_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.red_bandit_leader_armor);

::Legends.Armor.Standard.southern_knight_armor <- {
	ID = "southern_knight_armor", // 215
	Script = "",
	Sets = [{
		Cloth = [
			[10, "cloth/southern_robe"],
			[10, "cloth/southern_split_gambeson"],
			[10, "cloth/southern_gambeson"],
			[5, "cloth/southern_tunic"],
			[5, "cloth/gambeson"],
			[2, "cloth/gambeson", [1, 2, 3]],
			[2, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/southern_mail"]
		],
		Plate = [
			[1, "plate/southern_plate"]
		],
		Cloak = [
			[1, ""],
			[1, "cloak/southern_scarf"],
			[1, "cloak/animal_pelt"],
			[1, "cloak/southern_scarf_wrap"]
		],
		Tabard = [
			[3, ""],
			[2, "tabard/southern_wrap_left"],
			[1, "tabard/southern_wrap"],
			[1, "tabard/southern_shoulder_cloth"]
		],
		Attachments = [
			[6, ""],
			[4, "armor_upgrades/legend_mail_patch_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.southern_knight_armor);

::Legends.Armor.Standard.northern_mercenary_armor_00 <- {
	ID = "northern_mercenary_armor_00", // heavier than 01 ~200
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[2, "cloth/gambeson", [1, 2, 3]],
			[5, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/hauberk"],
			[1, "chain/hauberk_full"]
		],
		Plate = [
			[8, ""],
			[1, "plate/rotten_scale_coat"],
			[1, "plate/scale_shirt"]
		],
		Cloak = [
			[1, ""],
			[2, "cloak/shoulder_cloth", 2]
		],
		Tabard = [

		],
		Attachments = [
			[0, ""],
			[4, "armor_upgrades/legend_double_mail_upgrade"],
			[4, "armor_upgrades/legend_direwolf_pelt_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.northern_mercenary_armor_00);

::Legends.Armor.Standard.traze_northern_mercenary_armor <- {
	ID = "traze_northern_mercenary_armor", // around 240
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[2, "cloth/gambeson", [1, 2, 3]],
			[5, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/hauberk"],
			[1, "chain/hauberk_full"],
		],
		Plate = [
			[1, "plate/plate_cuirass"],
		],
		Cloak = [
			[1, ""],
			[2, "cloak/shoulder_cloth"],
		],
		Tabard = [

		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.traze_northern_mercenary_armor);

::Legends.Armor.Standard.northern_mercenary_armor_01 <- {
	ID = "northern_mercenary_armor_01", // lighter than 00 ~170
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[2, "cloth/gambeson", [1, 2, 3]],
			[5, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/reinforced_mail"],
			[1, "chain/reinforced_mail_shirt"],
			[1, "chain/reinforced_worn_mail"]
		],
		Plate = [
			[0, "plate/southern_plate"]
		],
		Cloak = [
			[1, ""],
			[2, "cloak/shoulder_cloth", 2]
		],
		Tabard = [

		],
		Attachments = [
			[0, ""],
			[4, "armor_upgrades/legend_metal_plating_upgrade"],
			[4, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.northern_mercenary_armor_01);

::Legends.Armor.Standard.northern_mercenary_armor_02 <- {
	ID = "northern_mercenary_armor_02", // ~~250
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[2, "cloth/gambeson", [1, 2, 3]],
			[5, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/reinforced_mail"],
			[1, "chain/reinforced_mail_shirt"],
			[1, "chain/reinforced_worn_mail"]
		],
		Plate = [
			[0, "plate/southern_plate"]
		],
		Cloak = [
			[1, ""],
			[2, "cloak/shoulder_cloth", 2]
		],
		Tabard = [

		],
		Attachments = [
			[0, ""],
			[4, "armor_upgrades/legend_metal_plating_upgrade"],
			[4, "armor_upgrades/legend_leather_shoulderguards_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.northern_mercenary_armor_02);

::Legends.Armor.Standard.barbarian_chosen_armor_00 <- {
	ID = "barbarian_chosen_armor_00", // ~~186
	Script = "",
	Sets = [{
		Cloth = [
			[2, "cloth/gambeson"],
			[5, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/ancient_mail"]
		],
		Plate = [
			[1, "plate/hide_and_bone_armor"]
		],
		Cloak = [
		],
		Tabard = [

		],
		Attachments = [
			[0, ""],
			[4, "armor_upgrades/legend_bone_platings_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.barbarian_chosen_armor_00);

::Legends.Armor.Standard.barbarian_chosen_armor_01 <- {
	ID = "barbarian_chosen_armor_01", // ~~186
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson"],
			[4, "cloth/quilted_aketon"],
			[4, "cloth/quilted_aketon", [1,26,27,28,29,30,31]],
			[1, "cloth/gambeson_wolf"]
		],
		Chain = [
			[1, "chain/reinforced_worn_mail_shirt"],
			[1, "chain/ancient_double_mail", 1],
		],
		Plate = [
			[1, "plate/scrap_metal_armor"],
			[1, "plate/rugged_scale_armor"],
			[1, "plate/heavy_iron_armor"],
		],
		Cloak = [
			[1, ""],
			[1, "cloak/cloak_wooly_dark"],
			[1, "cloak/southern_scarf", 7],
			[1, "cloak/southern_scarf", 6],
			[1, "cloak/southern_scarf", 13],
		],
		Tabard = [
			[1, "tabard/southern_shoulder_cloth", 7],
			[1, "tabard/southern_wrap"],
		],
		Attachments = [
			[4, ""],
			[1, "armor_upgrades/legend_bone_platings_upgrade"],
			[1, "armor_upgrades/legend_direwolf_pelt_upgrade"],
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.barbarian_chosen_armor_01);

::Legends.Armor.Standard.brown_monk_armor_00 <- {
	ID = "brown_monk_armor_00", // ~~186
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes", 1]
		],
		Chain = [
		],
		Plate = [
			[2, ""],
			[1, "plate/leather_jacket_simple"]
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/southern_wrap_left", 6],
			[1, "tabard/southern_shoulder_cloth", 7],
			[1, "tabard/southern_shoulder_cloth", 6]
		],
		Attachments = [
			[9, ""],
			[1, "armor_upgrades/legend_leather_neckguard_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.brown_monk_armor_00);

::Legends.Armor.Standard.dark_southern_armor_00 <- {
	ID = "dark_southern_armor_00", // ~~186
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
			[1, "cloth/tunic_wrap"],
			[1, "cloth/tunic_collar_thin"],
			[1, "cloth/tunic_collar_deep"]
		],
		Chain = [
			[1, "chain/short_mail"]
		],
		Plate = [
		],
		Cloak = [
			[1, "cloak/animal_pelt", 4]
		],
		Tabard = [
			[1, "tabard/southern_overcloth"]
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.dark_southern_armor_00);

::Legends.Armor.Standard.citrene_nomad_cutthroat_armor_00 <- {
	ID = "citrene_nomad_cutthroat_armor_00", // ~~160-195
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/southern_tunic"], // 25
		],
		Chain = [
		],
		Plate = [
			[5, "plate/leather_lamellar_harness_heavy"], // 130
			[3, "plate/leather_lamellar_reinforced"], // 150
			[1, "plate/leather_lamellar_heavy"], // 165
		],
		Cloak = [
			[0, "cloak/southern_scarf_wrap"], // 15
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.citrene_nomad_cutthroat_armor_00);

::Legends.Armor.Standard.citrene_nomad_cutthroat_armor_01 <- {
	ID = "citrene_nomad_cutthroat_armor_01", // ~~177
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/southern_gambeson"], // 65
			[1, "cloth/southern_split_gambeson"], // 65
		],
		Chain = [
		],
		Plate = [
			[1, "plate/plate_ancient_chest_restored"], // 110
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/southern_wrap_right"], // 2
			[1, "tabard/southern_wrap_left"], // 2
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.citrene_nomad_cutthroat_armor_01);

::Legends.Armor.Standard.citrene_nomad_leader_armor_00 <- {
	ID = "citrene_nomad_leader_armor_00", // ~~165 ish
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/southern_gladiator_harness"], // 40
		],
		Chain = [
			[0, "chain/southern_mail"], // 100
		],
		Plate = [
			[1, "plate/southern_arm_guards"],
		],
		Cloak = [
		],
		Tabard = [
			[2, "tabard/noble_vest"], // 10
			[1, "tabard/southern_wrap"], // 5
			[1, "tabard/southern_shoulder_cloth"], // 5
			[1, "tabard/southern_overcloth"], // 10
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.citrene_nomad_leader_armor_00);

::Legends.Armor.Standard.white_nomad_leader_armor_00 <- {
	ID = "white_nomad_leader_armor_00", // ~~186
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/thick_tunic"],
			[1, "cloth/tunic"],
			[1, "cloth/tunic_wrap"],
			[1, "cloth/tunic_collar_thin"],
			[1, "cloth/tunic_collar_deep"]
		],
		Chain = [
			[1, "chain/southern_mail"],
		],
		Plate = [

			[1, "plate/leather_lamellar_harness_heavy"], //130
			[1, "plate/leather_lamellar_harness_reinforced"], //150
			[1, "plate/southern_scale"], // 155
		],
		Cloak = [
			[3, ""],
			[1, "cloak/southern_scarf"], // 5
		],
		Tabard = [
			[2, ""],
			[1, "tabard/southern_shoulder_cloth"], // 5
			[1, "tabard/southern_wrap"], // 5
			[1, "tabard/southern_shoulder_cloth"], // 5
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.white_nomad_leader_armor_00);

::Legends.Armor.Standard.theamson_nomad_outlaw_armor <- {
	ID = "theamson_nomad_outlaw_armor", // ~~145-175
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/southern_tunic"],
		],
		Chain = [
			[1, "chain/hauberk_full"],
		],
		Plate = [
			[1, "plate/southern_arm_guards"],
		],
		Cloak = [
			[1, "cloak/shoulder_cloth"], // 5
		],
		Tabard = [
			[1, "tabard/southern_shoulder_cloth"], // 5
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.theamson_nomad_outlaw_armor);

::Legends.Armor.Standard.theamson_nomad_leader_armor_heavy <- {
	ID = "theamson_nomad_leader_armor_heavy", // ~~210-240-280
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/southern_tunic"],
		],
		Chain = [
			[1, "chain/basic_mail"],
		],
		Plate = [
			[1, "plate/southern_leather_plates"],
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/southern_shoulder_cloth"], // 5
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.theamson_nomad_leader_armor_heavy);

::Legends.Armor.Standard.indebted_armor_rags <- {
	ID = "indebted_armor_rags", // ~~BOSS OF THIS GYM
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/sackcloth"],
			[1, "cloth/sackcloth_tattered"],
			[1, "cloth/sackcloth_patched"],
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
			[1, ""],

		],
		Tabard = [
			[1, "tabard/southern_wrap_left"],
			[1, "tabard/southern_wrap_right"],
			[1, "tabard/southern_wrap"], // 5
			[1, "tabard/southern_shoulder_cloth"], // 5
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.indebted_armor_rags);

::Legends.Armor.Standard.heraldic_armor <- {
	ID = "special/heraldic_armor", // 250
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
		],
		Chain = [
			[1, "chain/hauberk_full"], // 115
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/tabard"], // 10
			[1, "tabard/tabard_noble"], // 10
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.heraldic_armor);

::Legends.Armor.Standard.wardog_armor <- {
	ID = "special/wardog_armor", // 55
	Script = "",
	Sets = [{
		Cloth = [
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.wardog_armor);

::Legends.Armor.Standard.wardog_heavy_armor <- {
	ID = "special/wardog_heavy_armor", // 85
	Script = "",
	Sets = [{
		Cloth = [
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.wardog_heavy_armor);

::Legends.Armor.Standard.adorned_heavy_mail_hauberk <- {
	ID = "adorned_heavy_mail_hauberk", //
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], // 65
			[1, "cloth/quilted_aketon"], // 55
		],
		Chain = [
			[4, "chain/hauberk"], // 95
			[1, "chain/hauberk_full"], // 115
		],
		Plate = [
			[1, "plate/leather_scale"],
			[1, "plate/leather_riveted"],
			[1, "plate/leather_riveted_light"],
			[1, "plate/leather_brigandine"],
			[1, "plate/leather_brigandine_hardened"],
			[1, "plate/leather_brigandine_hardened_full"],
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			//	[1, "armor_upgrades/legend_armor_chain_and_mail_upgrade"], //
			//	[1, "armor_upgrades/legend_armor_sacred_shield_upgrade"], //
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.adorned_heavy_mail_hauberk);

::Legends.Armor.Standard.adorned_mail_shirt <- {
	ID = "adorned_mail_shirt",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/knightly_robe"], //
		],
		Chain = [
			[1, "chain/mail_shirt"], //50
			[1, "chain/mail_shirt_simple"], //25
		],
		Plate = [
			[1, "plate/southern_padded"], //
			[1, "plate/leather_padded"], //
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			[1, "armor_upgrades/legend_armor_spiked_collar_upgrade"], //
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.adorned_mail_shirt);

::Legends.Armor.Standard.reinforced_leather_tunic <- {
	ID = "reinforced_leather_tunic",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/robes_anatomist"], //
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
			[1, "cloak/anatomist_hood"], //
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.reinforced_leather_tunic);

::Legends.Armor.Standard.undertaker_apron <- {
	ID = "undertaker_apron",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]], //65
		],
		Chain = [
		],
		Plate = [
			[1, "plate/apron_undertakers"], //65
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.undertaker_apron);

::Legends.Armor.Standard.wanderers_coat <- {
	ID = "wanderers_coat",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/wanderers_coat"], //
		],
		Chain = [
		],
		Plate = [
		],
		Cloak = [
			[1, "cloak/religious_scarf"], //
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.wanderers_coat);

::Legends.Armor.Standard.lonewolf_longsword_armour <- {
	ID = "lonewolf_longsword_armour",
	Script = "scripts/items/armor/lonewolf_longsword_armour",
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], //55
			[1, "cloth/gambeson", [1, 2, 3]], //65
		],
		Chain = [
			[1, "chain/mail_shirt"], //50
			[1, "chain/mail_shirt_simple"], //25
		],
		Plate = [
			[1, "plate/leather_lamellar"], //50
		],
		Cloak = [
		],
		Tabard = [
			[2, "tabard/noble_vest"],
		],
		Attachments = [
			[5, "armor_upgrades/legend_leather_neckguard_upgrade"],
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lonewolf_longsword_armour);

::Legends.Armor.Standard.lonewolf_hammershield_armour <- {
	ID = "lonewolf_hammershield_armour",
	Script = "scripts/items/armor/lonewolf_hammershield_armour",
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"],
			[1, "cloth/gambeson", [1, 2, 3]],
		],
		Chain = [
			[1, "chain/reinforced_mail"], //50
		],
		Plate = [
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/southern_shoulder_cloth"],
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lonewolf_hammershield_armour);

::Legends.Armor.Standard.lonewolf_axebuckler_armour <- {
	ID = "lonewolf_axebuckler_armour",
	Script = "scripts/items/armor/lonewolf_axebuckler_armour",
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"],
			[1, "cloth/gambeson", [1, 2, 3]],
		],
		Chain = [
			[1, "chain/mail_shirt_simple"], //25
		],
		Plate = [
			[1, "plate/leather_lamellar_harness_reinforced"], //55
		],
		Cloak = [
		],
		Tabard = [
		],
		Attachments = [
			[1, "armor_upgrades/legend_direwolf_pelt_upgrade"],
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lonewolf_axebuckler_armour);

::Legends.Armor.Standard.lonewolf_crossbowsword_armour <- {
	ID = "lonewolf_crossbowsword_armour",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"],
			[1, "cloth/robes"],
			[1, "cloth/tunic"],
		],
		Chain = [
			[1, "chain/mail_shirt_simple"], //25
		],
		Plate = [
		],
		Cloak = [
			[1, "cloak/shoulder_cloth"],
		],
		Tabard = [
			[1, "tabard/southern_shoulder_cloth"],
		],
		Attachments = [
		]
	}]

};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lonewolf_crossbowsword_armour);

::Legends.Armor.Standard.lonewolf_bowdagger_armour <- {
	ID = "lonewolf_bowdagger_armour",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/tunic_noble"],
		],
		Chain = [
			[1, "chain/mail_shirt_simple"],
		],
		Plate = [
		],
		Cloak = [
			[1, "cloak/cloak_crusader"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]

};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lonewolf_bowdagger_armour);

::Legends.Armor.Standard.lonewolf_polearm_armour <- {
	ID = "lonewolf_polearm_armour",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], //55
		],
		Chain = [
			[1, "chain/mail_shirt_simple"], //25
		],
		Plate = [
			[1, "plate/plate_chest"], //125
		],
		Cloak = [
			[1, "cloak/southern_scarf"],
		],
		Tabard = [
			[1, "tabard/tabard"],
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lonewolf_polearm_armour);

::Legends.Armor.Standard.bandit_armor_light <- {
	ID = "bandit_armor_light",
	Script = "", //~90-175
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], //55
			[1, "cloth/gambeson", [1, 2, 3]], //65
		],
		Chain = [
			[3, "chain/mail_shirt_simple"], //25
			[3, "chain/rusty_mail_shirt"], // 20
			[2, "chain/mail_shirt"], //50
			[1, "chain/reinforced_mail_shirt"], //80
			[2, "chain/short_mail"], //60
			[1, "plate/leather_brigandine"], // 65
			[4, ""], //0
		],
		Plate = [
			[1, "plate/leather_padded"], // 40
			[2, ""], //0
		],
		Cloak = [
		],
		Tabard = [
			[1, "tabard/tabard"], //5
			[2, ""], //0
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.bandit_armor_light);

::Legends.Armor.Standard.bandit_armor_medium <- {
	ID = "bandit_armor_medium",
	Script = "", //~140-165
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], //55
			[1, "cloth/gambeson", [1, 2, 3]], // 65
		],
		Chain = [
			[1, "chain/mail_shirt"], // 50
			[1, "chain/reinforced_mail"], //110
			[1, "chain/reinforced_mail_shirt"], //80
			[1, "chain/short_mail"], //60
			[1, "chain/basic_mail"], //85
			[1, "chain/hauberk"], //95
			[1, "chain/reinforced_rotten_mail_shirt"], // 45
		],
		Plate = [
			[2, "plate/rotten_scale_coat"], //60
			[2, "plate/leather_lamellar"], //50
			[2, "plate/leather_padded"], // 40
			[2, "plate/leather_lamellar_reinforced"], //55
			[1, "plate/scale_shirt"], //85
			[2, ""], //0
			[1, "plate/leather_brigandine"], // 65
			[2, "plate/leather_lamellar_reinforced"], //55
		],
		Cloak = [
			[1, "cloak/cloak"], //10
			[1, ""], //0
		],
		Tabard = [
			[1, "tabard/tabard"], //5
			[1, ""], //0
		],
		Attachments = [
			[15, ""],
			[5, "armor_upgrades/legend_leather_neckguard_upgrade"],
			[5, "armor_upgrades/legend_mail_patch_upgrade"],
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.bandit_armor_medium);

::Legends.Armor.Standard.bandit_armor_heavy <- {
	ID = "bandit_armor_heavy",
	Script = "", //~230-315
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], //55
			[1, "cloth/gambeson", [1, 2, 3]], // 65
		],
		Chain = [
			[2, "chain/hauberk"], //95
			[2, "chain/basic_mail"], //85
			[1, "chain/reinforced_mail"], //110
			[1, "chain/hauberk_full"], //115
		],
		Plate = [
			[2, "plate/plate_chest"], //125
			[1, "plate/plate_cuirass"], //150
			[2, "plate/scale"], //100
			[2, "plate/rotten_scale_coat"], //60
			[1, "plate/scale_coat"], //120
			[2, "plate/leather_lamellar_harness_heavy"], //130
			[1, "plate/leather_lamellar_reinforced"], //150
			[1, "plate/leather_brigandine"], // 65
			[1, "plate/leather_brigandine_hardened"], // 110
			[1, "plate/leather_brigandine_hardened_full"], // 140
		],
		Cloak = [
			[1, "cloak/cloak"], //10
			[1, ""], //0
		],
		Tabard = [
			[1, "tabard/tabard"], //5
			[1, ""], //0
		],
		Attachments = [
			[5, "armor_upgrades/legend_mail_patch_upgrade"],
			[15, ""],
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.bandit_armor_heavy);

::Legends.Armor.Standard.bandit_armor_ultraheavy <- {
	ID = "bandit_armor_ultraheavy",
	Script = "", //~255-375
	Sets = [{
		Cloth = [
			[1, "cloth/quilted_aketon"], //55
			[1, "cloth/gambeson_wolf"], // 70
		],
		Chain = [
			[1, "chain/reinforced_mail"], //110
			[1, "chain/hauberk"], //95
			[1, "chain/reinforced_mail_shirt"], //80
			[1, "chain/hauberk_full"], //115
		],
		Plate = [
			[1, "plate/plate_cuirass"], //150
			[1, "plate/plate_full"], //160
			[1, "plate/leather_lamellar_heavy"], //165
			[3, "plate/plate_full_greaves"], //170
			[1, "plate/leather_lamellar_reinforced"], //150
			[1, "plate/leather_lamellar_heavy"], //165
			[1, "plate/leather_brigandine_hardened_full"], // 140
		],
		Cloak = [
			[1, "cloak/cloak"], //10
			[1, ""], //0
		],
		Tabard = [
		],
		Attachments = [
			[15, ""],
			[5, "armor_upgrades/legend_mail_patch_upgrade"],
			[2, "armor_upgrades/legend_metal_pauldrons_upgrade"],
		]
	}]

};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.bandit_armor_ultraheavy);

::Legends.Armor.Standard.lindwurm_armor <- {
	ID = "noble_mail_armor",
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/gambeson", [1, 2, 3]],
			[1, "cloth/gambeson"],
			[1, "cloth/quilted_aketon"], //55
			[1, "cloth/gambeson_wolf"], // 70
		],
		Chain = [
			[1, "chain/hauberk_sleeveless"],
			[1, "chain/mail_shirt"],
			[1, "chain/short_mail"],
		],
		Plate = [
			[1, "named/legend_lindwurm_scale_armor"],
		],
		Cloak = [
			[10, ""],
			[2, "cloak/noble_shawl"],
			[1, "cloak/sash"],
		],
		Tabard = [
		],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.lindwurm_armor);

::Legends.Armor.Standard.mercury_noble_elite_footman_00 <- {
	ID = "mercury_noble_elite_footman_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/gambeson", 2]],
		Chain = [[1, "chain/hauberk_sleeveless", 1]],
		Plate = [[1, "plate/leather_scale", 1]],
		Cloak = [[1, "cloak/tabbed_hood"]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[2, ""], [1, "armor_upgrades/legend_metal_plating_upgrade", 0], [1, "armor_upgrades/legend_pauldron_swan_upgrade"], [1, "armor_upgrades/legend_armor_spiked_collar_upgrade", 0]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_noble_elite_footman_00);

::Legends.Armor.Standard.mercury_sureshot_00 <- {
	ID = "mercury_sureshot_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/gambeson", 8]],
		Chain = [[1, "chain/hauberk_sleeveless", 1]],
		Plate = [[1, "plate/leather_jacket_simple", 6]],
		Cloak = [[1, ""]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_sureshot_00);

::Legends.Armor.Standard.mercury_sureshot_01 <- {
	ID = "mercury_sureshot_01",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/robes", 11]],
		Chain = [[1, "chain/mail_shirt_simple", 1]],
		Plate = [[1, "plate/leather_lamellar", 1]],
		Cloak = [[1, "cloak/cloak", 21]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_sureshot_01);

::Legends.Armor.Standard.mercury_sureshot_02 <- {
	ID = "mercury_sureshot_02",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/robes", 11]],
		Chain = [[1, "chain/mail_shirt_simple", 1]],
		Plate = [[1, "plate/leather_scale", 1], [1, "plate/leather_riveted_light", 1]],
		Cloak = [[1, ""], [1, "cloak/shoulder_cloth", 2], [1, "cloak/cloak_fur", 1]],
		Tabard = [[1, "tabard/tabard_noble", 3]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_sureshot_02);

::Legends.Armor.Standard.mercury_pollax_00 <- {
	ID = "mercury_pollax_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/gambeson", 8]],
		Chain = [[1, "chain/hauberk_sleeveless", 1]],
		Plate = [[1, "plate/leather_lamellar", 1]],
		Cloak = [[1, "cloak/cloak_fur", 4]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[3, ""], [1, "armor_upgrades/legend_metal_plating_upgrade", 0], [1, "armor_upgrades/legend_pauldron_swan_upgrade"], [1, "armor_upgrades/legend_armor_spiked_collar_upgrade", 0]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_pollax_00);

::Legends.Armor.Standard.mercury_pollax_01 <- {
	ID = "mercury_pollax_01",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/knightly_robe", 7]],
		Chain = [[1, "chain/mail_shirt_simple", 1]],
		Plate = [[1, "plate/scale_shirt", 1]],
		Cloak = [[1, "cloak/decorative_hood", 8], [1, "cloak/shoulder_cloth", 2]],
		Tabard = [[1, "tabard/tabard"]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_pollax_01);

::Legends.Armor.Standard.mercury_sureshot_green_00 <- {
	ID = "mercury_sureshot_green_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/robes", 14]],
		Chain = [[1, ""]],
		Plate = [[1, "plate/leather_riveted", 5]],
		Cloak = [[1, "cloak/cloak_heavy", 24]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_sureshot_green_00);

::Legends.Armor.Standard.mercury_sureshot_blue_00 <- {
	ID = "mercury_sureshot_blue_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/thick_tunic", 10]],
		Chain = [[1, ""]],
		Plate = [[1, "plate/leather_lamellar_harness_reinforced", 1]],
		Cloak = [[1, ""]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[2, ""], [1, "armor_upgrades/legend_leather_shoulderguards_upgrade"]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_sureshot_blue_00);

::Legends.Armor.Standard.mercury_pollax_colorful_00 <- {
	ID = "mercury_pollax_colorful_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/tunic_noble", 9]],
		Chain = [[1, "chain/reinforced_mail_shirt", 1]],
		Plate = [[1, "plate/scale", 1], [1, "plate/leather_brigandine", 1]],
		Cloak = [[1, "cloak/decorative_hood"]], //8 for only black
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_pollax_colorful_00);

::Legends.Armor.Standard.mercury_pollax_colorful_01 <- {
	ID = "mercury_pollax_colorful_01",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/tunic_noble", 9]],
		Chain = [[1, "chain/reinforced_worn_mail", 1]],
		Plate = [[1, "plate/southern_arm_guards", 1]],
		Cloak = [[1, "cloak/decorative_hood", 8]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[1, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_pollax_colorful_01);

::Legends.Armor.Standard.mercury_royal_guard_00 <- {
	ID = "mercury_royal_guard_00",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/gambeson", 2]],
		Chain = [[1, "chain/hauberk_sleeveless", 1], [1, "chain/short_mail", 1]],
		Plate = [[1, "plate/leather_brigandine_hardened_full", 1], [1, "plate/leather_riveted"], [1, "plate/scale_shirt", 1], [1, "plate/leather_brigandine", 1]],
		Cloak = [[1, ""]],
		Tabard = [[1, "tabard/tabard_noble"]],
		Attachments = [[3, ""], [1, "armor_upgrades/legend_leather_neckguard_upgrade", 0], [1, "armor_upgrades/legend_double_mail_upgrade", 0], [1, "armor_upgrades/legend_leather_shoulderguards_upgrade", 0]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.mercury_royal_guard_00);

::Legends.Armor.Standard.fault_finder_robes <- {
	ID = "fault_finder_robes",
	Script = "",
	Sets = [{
		Cloth = [[1, "cloth/fleshcultist_tunic", 1]],
		Chain = [[1, ""]],
		Plate = [[1, "plate/fleshcultist_jacket", 1]],
		Cloak = [[1, ""]],
		Tabard = [[1, "tabard/fleshcultist_tabard"]],
		Attachments = [[3, ""]],
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Standard.fault_finder_robes);

