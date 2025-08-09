this.legend_royal_lance <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.legend_royal_lance";
		this.m.Name = "Royal Lance"
		this.m.Description = "Well crafted and withstanding age this spear manages to impress craftsmen even today. Used for thrusting over some distance and keeping the enemy at bay.";
		this.m.WeaponType = this.Const.Items.WeaponType.Spear;
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.Variant = 1;
		this.updateVariant();
		this.m.Value = 1800;
		this.m.ShieldDamage = 0;
		this.m.Condition = 65.0;
		this.m.ConditionMax = 65.0;
		this.m.StaminaModifier = -10;
		this.m.RegularDamage = 65;
		this.m.RegularDamageMax = 85;
		this.m.ArmorDamageMult = 1.0;
		this.m.DirectDamageMult = 0.35;
		this.m.ChanceToHitHead = 5;
	}

	function updateVariant()
	{
		this.m.IconLarge = "weapons/melee/legend_mummy_lance_0" + this.m.Variant + ".png";
		this.m.Icon = "weapons/melee/legend_mummy_lance_0" + this.m.Variant + "_70x70.png";
		this.m.ArmamentIcon = "icon_mummy_lance_0" + this.m.Variant;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		::Legends.Actives.grant(this, ::Legends.Active.Prong, function (_skill) {
			_skill.m.Icon = "skills/active_04.png";
			_skill.m.IconDisabled = "skills/active_124_sw.png";
		}.bindenv(this));
		::Legends.Actives.grant(this, ::Legends.Active.LegendSkewer, function (_skill) {
			_skill.m.IsSpearSkewer = true;
		}.bindenv(this));
		::Legends.Actives.grant(this, ::Legends.Active.Spearwall, function (_skill) {
			_skill.m.BaseAttackName = "Prong";
			_skill.setFatigueCost(_skill.getFatigueCostRaw() + 5);
			_skill.m.ActionPointCost = 6;
		}.bindenv(this));
	}

});

