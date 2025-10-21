this.perk_legend_mastery_music <- this.inherit("scripts/skills/skill", {
	m = {
		SkillsToAdjust = [
			::Legends.Active.LegendDrumsOfLife,
			::Legends.Active.LegendDrumsOfWar,
			::Legends.Active.LegendMartialMarch
		]
	},
	function create()
	{
		::Const.Perks.setup(this.m, ::Legends.Perk.LegendMasteryMusic);
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate( _properties )
	{
		_properties.IsSpecializedInMusic = true;
		foreach(skill in this.m.SkillsToAdjust) {
			_properties.SkillCostAdjustments.push({
				ID = ::Legends.Actives.getID(skill),
				APAdjust = -1,
				FatigueMultAdjust = ::Const.Combat.WeaponSpecFatigueMult
			});
		}
	}

});
