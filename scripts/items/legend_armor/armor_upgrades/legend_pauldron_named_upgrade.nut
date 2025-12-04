this.legend_pauldron_named_upgrade <- this.inherit("scripts/items/legend_armor/legend_armor_upgrade", {
	m = {},
	function create()
	{
		this.legend_armor_upgrade.create();
		this.m.ID = "legend_armor_upgrade.body.legend_pauldron_named";
		this.m.Type = this.Const.Items.ArmorUpgrades.Attachment;
		this.m.Name = "Gilded Pauldrons";
		this.m.Description = "These segments of worked iron are beautifully decorated and excellent for protecting shoulders and arms. Worn over common armor, they can help to deflect incoming blows.";
		this.m.ArmorDescription = "Segments of decorated iron plates provide additional protection.";
		this.m.Icon = "armor_upgrades/icon_pauldrons_named_01.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_pauldrons_named_01.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_pauldrons_named_01.png";
		this.m.SpriteBack = "upgrade_pauldrons_named";
		this.m.SpriteDamagedBack = "upgrade_pauldrons_named_damaged";
		this.m.SpriteCorpseBack = "upgrade_pauldrons_named_dead";
		this.m.Value = 3600;
		this.m.Condition = 55;
		this.m.ConditionMax = 55;
		this.m.StaminaModifier = -8;
		this.m.DirectDamageModifier = -40.0;
	}

	function randomizeValues()
	{
		this.m.StaminaModifier = this.Math.rand(8, 4) * -1;
		this.m.Condition = this.Math.floor(this.m.Condition * this.Math.rand(110, 125) * 0.01) * 1.0;
		this.m.DirectDamageModifier = this.Math.rand(40, 45) * 1.0;
		this.m.ConditionMax = this.m.Condition;
	}
});

