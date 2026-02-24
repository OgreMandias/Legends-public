this.legend_named_rusty_warcleaver <- this.inherit("scripts/items/weapons/named/named_weapon", {
	m = {},
	function create()
	{
		this.named_weapon.create();
		this.m.Variant = 1;
		this.updateVariant();
		this.m.ID = "weapon.legend_named_rusty_warcleaver";
		this.m.NameList = this.Const.Strings.CleaverNames;
		this.m.PrefixList = this.Const.Strings.BarbarianPrefix;
		this.m.SuffixList = this.Const.Strings.BarbarianSuffix;
		this.m.UseRandomName = false;
		this.m.Description = "An uncommonly curved blade shape for the warriors of the north, this savage warcleaver is heavy and sturdy. The strange material can decapitate, as well as it can destroy shields.";
		this.m.Categories = "Cleaver, Two-Handed";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.Value = 4800;
		this.m.ShieldDamage = 36;
		this.m.Condition = 66.0;
		this.m.ConditionMax = 66.0;
		this.m.StaminaModifier = -20;
		this.m.RegularDamage = 65;
		this.m.RegularDamageMax = 90;
		this.m.ArmorDamageMult = 1.2;
		this.m.DirectDamageAdd = 0.1;
		this.m.DirectDamageMult = 0.25;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.IconLarge = "weapons/melee/legend_named_rusty_warcleaver_0" + this.m.Variant + ".png";
		this.m.Icon = "weapons/melee/legend_named_rusty_warcleaver_0" + this.m.Variant + "_70x70.png";
		this.m.ArmamentIcon = "icon_legend_named_rusty_warcleaver_0" + this.m.Variant;
	}

	function onEquip()
	{
		this.named_weapon.onEquip();
		local cleave = this.new("scripts/skills/actives/cleave");
		cleave.m.Icon = "skills/active_182.png";
		cleave.m.IconDisabled = "skills/active_182_sw.png";
		cleave.m.Overlay = "active_182";
		cleave.m.FatigueCost = 15;
		this.addSkill(cleave);
		this.addSkill(this.new("scripts/skills/actives/decapitate"));
		local skillToAdd = this.new("scripts/skills/actives/split_shield");
		skillToAdd.setFatigueCost(skillToAdd.getFatigueCostRaw() + 5);
		this.addSkill(skillToAdd);
	}

});

