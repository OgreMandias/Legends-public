::Legends.Armor.Named <- {};

::Legends.Armor.Named.black_and_gold_armor <- {
	ID = "named/black_and_gold_armor", // 210
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1,2,3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_hauberk_full_named"] //125-150 avg 130
		],
		Plate = [
		],
		Cloak = [
			[1, "cloak/legend_armor_cloak_wooly_dark"], //15
			[1, "cloak/legend_armor_cloak"], //10
			[1, "cloak/legend_armor_cloak_heavy"], //30
			[1, "cloak/legend_armor_southern_scarf"], //5
			[1, "cloak/legend_armor_animal_pelt"], //15
			[1, "cloak/legend_armor_southern_scarf_wrap"] //15
		],
		Tabard = [
			[2, ""],
			[3, "tabard/legend_armor_tabard"],
			[1, "tabard/legend_armor_southern_wrap_right"],
			[1, "tabard/legend_armor_southern_wrap_left"],
			[1, "tabard/legend_armor_southern_wide_belt"],
			[2, "tabard/legend_armor_southern_tabard"]
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.black_and_gold_armor);

::Legends.Armor.Named.black_leather_armor <- {
	ID = "named/black_leather_armor", // 110
	Script = "",
	Sets = [{
		Cloth = [ //45 avg
			[1, "cloth/legend_armor_tunic_noble_named"] //40-50
		],
		Chain = [ //45 avg, want 20
			[1, "chain/legend_armor_mail_shirt"], //50
			[1, "chain/legend_armor_mail_shirt_simple"], //25
			[1, "chain/legend_armor_reinforced_rotten_mail_shirt"], //45
			[1, "chain/legend_armor_short_mail"] //60
		],
		Plate = [
		],
		Cloak = [ //grabbed 2 southern layers cuz they look cool ; have avg of 17 ish want 3
			[1, "cloak/legend_armor_cloak"], //10
			[1, "cloak/legend_armor_cloak_heavy"], //30
			[1, "cloak/legend_armor_animal_pelt"], //15
			[1, "cloak/legend_armor_southern_scarf_wrap"] //15
		],
		Tabard = [
			[1, ""],
			[1, "tabard/legend_armor_tabard"],
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.black_leather_armor);

::Legends.Armor.Named.blue_studded_mail_armor <- {
	ID = "named/blue_studded_mail_armor", // 150
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson_named"] //75-90
		],
		Chain = [
			[1, "chain/legend_armor_mail_shirt"], //50
			[1, "chain/legend_armor_mail_shirt_simple"], //25
			[1, "chain/legend_armor_reinforced_rotten_mail_shirt"], //45
			[1, "chain/legend_armor_short_mail"] //60
		],
		Plate = [
		],
		Cloak = [],
		Tabard = [],
		Attachments = [
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.blue_studded_mail_armor);

::Legends.Armor.Named.brown_coat_of_plates_armor <- {
	ID = "named/brown_coat_of_plates_armor", // 300
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1,2,3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_ancient_double_mail"],
			[1, "chain/legend_armor_ancient_mail"],
			[1, "chain/legend_armor_basic_mail"],
			[1, "chain/legend_armor_hauberk_sleeveless"],
			[1, "chain/legend_armor_mail_shirt"],
			[1, "chain/legend_armor_mail_shirt_simple"],
			[1, "chain/legend_armor_short_mail"]
		],
		Plate = [
			// [1, "plate/legend_armor_plate_full_greaves"],
			[1, "plate/legend_armor_plate_full_greaves_named"],
			[1, "plate/legend_armor_plate_full_greaves_painted"]
		],
		Cloak = [
			[1, "cloak/legend_armor_shoulder_cloth"], //5
			[1, "cloak/legend_armor_noble_shawl"], //10
			[1, "cloak/legend_armor_cloak_wooly_dark"], //15
			[1, "cloak/legend_armor_cloak"], //10
			[1, "cloak/legend_armor_cloak_heavy"], //30
		],
		Tabard = [
			[1, "tabard/legend_armor_tabard"],
			[1, "tabard/legend_armor_tabard_noble"],
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.brown_coat_of_plates_armor);

::Legends.Armor.Named.golden_scale_armor <- {
	ID = "named/golden_scale_armor", // 230
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_hauberk_full_named"]
		],
		Plate = [
			[1, "plate/legend_armor_leather_brigandine"],
			[1, "plate/legend_armor_leather_brigandine_hardened"],
			[1, "plate/legend_armor_leather_brigandine_hardened_full"],
			[1, "plate/legend_armor_leather_jacket"],
			[1, "plate/legend_armor_leather_jacket_simple"],
			[1, "plate/legend_armor_leather_lamellar"],
			[1, "plate/legend_armor_leather_padded"],
			[1, "plate/legend_armor_leather_riveted_light"],
			[1, "plate/legend_armor_leather_scale"]
		],
		Cloak = [
			[1, "cloak/legend_armor_shoulder_cloth"], //5
			[1, "cloak/legend_armor_noble_shawl"], //10
			[1, "cloak/legend_armor_cloak_wooly_dark"], //15
			[1, "cloak/legend_armor_cloak"], //10
			[1, "cloak/legend_armor_cloak_heavy"], //30
		],
		Tabard = [
			[1, "tabard/legend_armor_tabard"],
			[1, "tabard/legend_armor_tabard_noble"],
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.golden_scale_armor);

::Legends.Armor.Named.green_coat_of_plates_armor <- {
	ID = "named/green_coat_of_plates_armor", // 320
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_ancient_double_mail"],
			[1, "chain/legend_armor_ancient_mail"],
			[1, "chain/legend_armor_reinforced_worn_mail"],
			[1, "chain/legend_armor_hauberk_sleeveless"],
			[1, "chain/legend_armor_mail_shirt"],
			[1, "chain/legend_armor_southern_mail"],
		],
		Plate = [
			// [1, "plate/legend_armor_plate_full_greaves"],
			[1, "plate/legend_armor_plate_full_greaves_named"],
			[1, "plate/legend_armor_plate_full_greaves_painted"]
		],
		Cloak = [
			[1, "cloak/legend_armor_shoulder_cloth"], //5
			[1, "cloak/legend_armor_noble_shawl"], //10
			[1, "cloak/legend_armor_cloak_wooly_dark"], //15
			[1, "cloak/legend_armor_cloak"], //10
			[1, "cloak/legend_armor_cloak_heavy"], //30
		],
		Tabard = [
			[1, "tabard/legend_armor_tabard"],
			[1, "tabard/legend_armor_tabard_noble"],
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.green_coat_of_plates_armor);

::Legends.Armor.Named.heraldic_mail_armor <- {
	ID = "named/heraldic_mail_armor", // 210
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [ //45 avg, want 20
			[1, "chain/legend_armor_mail_shirt"], //50
			[1, "chain/legend_armor_mail_shirt_simple"], //25
			[1, "chain/legend_armor_reinforced_rotten_mail_shirt"], //45
			[1, "chain/legend_armor_short_mail"] //60
		],
		Plate = [
			[1, "plate/legend_armor_scale_coat_named"]
		],
		Cloak = [],
		Tabard = [],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.heraldic_mail_armor);

::Legends.Armor.Named.leopard_armor <- {
	//TODO Southern
	ID = "named/leopard_armor", // 290
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_southern_robe"],
			[1, "cloth/legend_armor_southern_gambeson"],
			[1, "cloth/legend_armor_southern_split_gambeson"],
			[1, "cloth/legend_armor_southern_tunic"]
		],
		Chain = [
			[1, "chain/legend_armor_southern_padded_chest"],
			[1, "chain/legend_armor_southern_mail"]
		],
		Plate = [
			[1, "plate/legend_armor_southern_named_plate"]
		],
		Cloak = [
			[1, "cloak/legend_armor_animal_pelt"], //15
		],
		Tabard = [
			[3, ""],
			[1, "tabard/legend_armor_southern_wide_belt"],
			[1, "tabard/legend_armor_southern_tabard"]
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.leopard_armor);

::Legends.Armor.Named.named_bronze_armor <- {
	ID = "named/named_bronze_armor", // 280
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [

		],
		Plate = [
			[1, "plate/legend_armor_leather_brigandine_named"]
		],
		Cloak = [],
		Tabard = [],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.named_bronze_armor);

::Legends.Armor.Named.named_golden_lamellar_armor <- {
	ID = "named/named_golden_lamellar_armor", // 285
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [

		],
		Plate = [
			[1, "plate/legend_armor_southern_named_plate"]
		],
		Cloak = [
			[1, "cloak/legend_armor_southern_scarf"], //5
			[1, "cloak/legend_armor_animal_pelt"], //15
			[1, "cloak/legend_armor_southern_scarf_wrap"] //15
		],
		Tabard = [
			[1, "tabard/legend_armor_southern_wrap_right"],
			[1, "tabard/legend_armor_southern_wrap_left"],
			[1, "tabard/legend_armor_southern_wide_belt"],
			[1, "tabard/legend_armor_southern_wrap"],
			[1, "tabard/legend_armor_southern_shoulder_cloth"],
			[1, "tabard/legend_armor_southern_overcloth"],
			[1, "tabard/legend_armor_southern_tabard"]
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.named_golden_lamellar_armor);

::Legends.Armor.Named.named_noble_mail_armor <- {
	ID = "named/named_noble_mail_armor", // 160
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_gambeson_named"]
		],
		Chain = [
			[1, ""], //0
			[1, "chain/legend_armor_mail_shirt_simple"] //25
		],
		Plate = [
			[1, "plate/legend_armor_leather_jacket_named"],
			[1, "plate/legend_armor_leather_studded_jacket_named"]
		],
		Cloak = [
			[1, "cloak/legend_armor_cloak_heavy"], //30
			[4, "cloak/legend_armor_cloak_noble"], //25
		],
		Tabard = [
			[7, "tabard/legend_armor_tabard_noble"],
			[2, "tabard/legend_armor_noble_vest"],
			[1, "tabard/legend_armor_southern_tabard"]
		],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.named_noble_mail_armor);

::Legends.Armor.Named.named_plated_fur_armor <- {
	ID = "named/named_plated_fur_armor", // 130
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [

		],
		Plate = [
			[1, "plate/legend_armor_leather_jacket_named"]
		],
		Cloak = [
			[1, "cloak/legend_armor_animal_pelt"], //15
		],
		Tabard = [],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.named_plated_fur_armor);

::Legends.Armor.Named.named_sellswords_armor <- {
	ID = "named/named_sellswords_armor", // 260
	Script = "",
	Sets = [{
		Cloth = [
			[1, "cloth/legend_armor_thick_tunic"],
			[1, "cloth/legend_armor_tunic"],
			[1, "cloth/legend_armor_tunic_wrap"],
			[1, "cloth/legend_armor_tunic_collar_thin"],
			[1, "cloth/legend_armor_tunic_collar_deep"],
			[1, "cloth/legend_armor_tunic_dark"],
			[1, "cloth/legend_armor_tunic_noble"]
		],
		Chain = [
			[1, "chain/legend_armor_ancient_double_mail"],
			[1, "chain/legend_armor_ancient_mail"],
			[1, "chain/legend_armor_basic_mail"],
			[1, "chain/legend_armor_hauberk_sleeveless"],
			[1, "chain/legend_armor_mail_shirt"],
			[1, "chain/legend_armor_mail_shirt_simple"],
			[1, "chain/legend_armor_short_mail"]
		],
		Plate = [
			[1, "plate/legend_armor_leather_lamellar_heavy_named"]
		],
		Cloak = [],
		Tabard = [],
		Attachments =[
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.named_sellswords_armor);

::Legends.Armor.Named.named_skull_and_chain_armor <- {
	ID = "named/named_skull_and_chain_armor", // 190
	Script = "",
	Sets = [{
		Cloth = [ //avg 65
			[4, "cloth/legend_armor_gambeson"],
			[4, "cloth/legend_armor_gambeson", [1, 2, 3]],
			[2, "cloth/legend_armor_gambeson_wolf"]
		],
		Chain = [
			[1, "chain/legend_armor_ancient_double_mail"],
			[1, "chain/legend_armor_ancient_mail"],
			[1, "chain/legend_armor_reinforced_rotten_mail_shirt"]
		],
		Plate = [
			[1, "plate/legend_armor_leather_brigandine_named"]
		],
		Cloak = [
			[4, "cloak/legend_armor_cloak_wooly_dark"], //15
			[1, "cloak/legend_armor_animal_pelt"], //15
		],
		Tabard = [],
		Attachments =[
			[1, "armor_upgrades/legend_armor_skull_chain_upgrade"]
		]
	}]
};
::Const.LegendMod.ArmorObjs.push(::Legends.Armor.Named.named_skull_and_chain_armor);

