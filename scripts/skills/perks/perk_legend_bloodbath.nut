this.perk_legend_bloodbath <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		::Const.Perks.setup(this.m, ::Legends.Perk.LegendBloodbath);
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.getBleeders() == 0;
	}

	function getTooltip()
	{
		local count = this.getBleeders();
		local tooltip = this.skill.getTooltip();
		if (count > 0)
		{
			tooltip.extend([
			{
				id = 6,
				type = "text",
				icon = "ui/icons/melee_skill.png",
				text = "Gain an additional [color=" + this.Const.UI.Color.PositiveValue + "]+" + count + "%[/color] Melee Skill"
			},
			{
				id = 7,
				type = "text",
				icon = "ui/icons/ranged_skill.png",
				text = "Gain an additional [color=" + this.Const.UI.Color.PositiveValue + "]+" + count + "%[/color] Ranged Skill"
			},
			{
				id = 8,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.Math.min(count, 5) + "%[/color] Fatigue Recovery per turn"
			}]);
		}

		return tooltip;
	}

	function getBleeders()
	{
		if (!("Entities" in this.Tactical))
		{
			return 0;
		}
		if (this.Tactical.Entities == null)
		{
			return 0;
		}

		if (!this.Tactical.isActive())
		{
			return 0;
		}
		local count = 0;

		local actor = this.getContainer().getActor();
		local myTile = actor.getTile();
		local actors = this.Tactical.Entities.getAllInstancesAsArray();
		foreach( a in actors )
		{
			if (a.isAlliedWith(actor))
				continue;
			if (a.getSkills().hasEffect(::Legends.Effect.Bleeding) || a.getSkills().hasEffect(::Legends.Effect.LegendGrazedEffect)  || a.getSkills().hasSkillOfType(this.Const.SkillType.TemporaryInjury))
			{
				if (myTile.getDistanceTo(a.getTile()) > 2)
				{
					count += 1;
				}
				else
				{
					count += 2;
				}
			}
		}

		return count;
	}

	function onUpdate( _properties )
	{	
		local count = this.getBleeders();
		_properties.Bravery += count;
		_properties.FatigueRecoveryRate += this.Math.min(5, count);
		_properties.MeleeSkill += count;
		_properties.RangedSkill += count;
	}

});

