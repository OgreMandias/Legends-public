this.legend_legion_employer <- ::inherit("scripts/entity/tactical/human", {
	m = {},
	function create() {
		this.m.Type = this.Const.EntityType.SkeletonLight;
		this.m.BloodType = this.Const.BloodType.Bones;
		this.m.XP = this.Const.Tactical.Actor.SkeletonLight.XP;
		this.skeleton.create();
		this.m.Faces = this.Const.Faces.Skeleton;
		this.m.Hairs = this.Const.Hair.Necromancer;
		this.m.HairColors = this.Const.HairColors.Zombie;
		this.m.Beards = this.Const.Beards.Raider;
	}

	function onInit() {
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.SkeletonLight);
		b.TargetAttractionMult = 3.0;
		b.IsAffectedByNight = false;
		b.Vision = 8;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_undead");
		this.getSprite("head").Color = this.createColor("#ffffff");
		this.getSprite("head").Saturation = 1.0;
		this.getSprite("body").Saturation = 0.6;
	}

	function assignRandomEquipment() 
	{
		local item = this.Const.World.Common.pickArmor([
			[1, ::Legends.Armor.Legendary.emperors_armor_fake]
		]);
		this.m.Items.equip(item);

		local item = this.Const.World.Common.pickHelmet([
			[1, ::Legends.Helmet.Ancient.ancient_laurels]
		]);
		this.m.Items.equip(item);
	}
});
