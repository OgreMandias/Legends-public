this.perk_legend_favoured_enemy_caravan <- this.inherit("scripts/skills/legend_favoured_enemy_skill", {
	m = {},
	function create()
	{
		this.legend_favoured_enemy_skill.create();
		::Legends.Perks.onCreate(this, ::Legends.Perk.LegendFavouredEnemyCaravan);
		this.m.ValidTypes = this.Const.LegendMod.FavoriteCaravan;
	}

	// this perk is handled in starting scenario
});

