this.legend_decorated_rhomphaia <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.legend_decorated_rhomphaia";
		this.m.Name = "Decorated Rhomphaia";
		this.m.Description = "A long curved blade adorned with gold inlays depicting a variety of subjects from harvests to battles. It is a much lighter weapon than expected and clearly served a ceremonial purpose.";
		this.m.IconLarge = "weapons/melee/rhomphaia_01_1.png";
		this.m.Icon = "weapons/melee/rhomphaia_01_1_70x70.png";
		this.m.WeaponType = this.Const.Items.WeaponType.Sword;
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.IsDoubleGrippable = false;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_rhomphaia_01_1";
		this.m.Value = 1800;
		this.m.ShieldDamage = 0;
		this.m.Condition = 38.0;
		this.m.ConditionMax = 38.0;
		this.m.StaminaModifier = -8;
		this.m.RegularDamage = 35;
		this.m.RegularDamageMax = 45;
		this.m.ArmorDamageMult = 1.0;
		this.m.DirectDamageMult = 0.15;
		this.m.ChanceToHitHead = 5;
		this.m.Bravery = 10;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		::Legends.Actives.grant(this, ::Legends.Active.Slash, function (_skill) {
			_skill.m.IsGreatSlash = true;
		}.bindenv(this));
		::Legends.Actives.grant(this, ::Legends.Active.Split);
		::Legends.Actives.grant(this, ::Legends.Active.Swing);
	}
});


	// function create()
	// {
	// 	this.weapon.create();
	// 	this.m.ID = "weapon.rhomphaia";
	// 	this.m.Name = "Rhomphaia";
	// 	this.m.Description = "A long and curved blade, sharpened only on one side, on a large handle. Can be used both for quick slashes and sweeping strikes.";
	// 	this.m.Categories = "Sword, Two-Handed";
	// 	this.m.IconLarge = "weapons/melee/romphaia_01.png";
	// 	this.m.Icon = "weapons/melee/romphaia_01_70x70.png";
	// 	this.m.SlotType = this.Const.ItemSlot.Mainhand;
	// 	this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
	// 	this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
	// 	this.m.IsAgainstShields = false;
	// 	this.m.IsAoE = true;
	// 	this.m.AddGenericSkill = true;
	// 	this.m.ShowQuiver = false;
	// 	this.m.ShowArmamentIcon = true;
	// 	this.m.ArmamentIcon = "icon_rhomphaia_01";
	// 	this.m.Value = 1300;
	// 	this.m.ShieldDamage = 0;
	// 	this.m.Condition = 42.0;
	// 	this.m.ConditionMax = 42.0;
	// 	this.m.StaminaModifier = -10;
	// 	this.m.RegularDamage = 45;
	// 	this.m.RegularDamageMax = 65;
	// 	this.m.ArmorDamageMult = 1.05;
	// 	this.m.DirectDamageMult = 0.2;
	// 	this.m.ChanceToHitHead = 5;
	// }

	// function onEquip()
	// {
	// 	this.weapon.onEquip();
	// 	local slash = this.new("scripts/skills/actives/slash");
	// 	slash.m.FatigueCost = 13;
	// 	this.addSkill(slash);
	// 	this.addSkill(this.new("scripts/skills/actives/split"));
	// 	this.addSkill(this.new("scripts/skills/actives/swing"));
	// }