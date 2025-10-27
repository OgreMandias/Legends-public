this.perk_legend_favoured_enemy_mercenary <- this.inherit("scripts/skills/legend_favoured_enemy_skill", {
	m = {},
	function create()
	{
		this.legend_favoured_enemy_skill.create();
		::Legends.Perks.onCreate(this, ::Legends.Perk.LegendFavouredEnemyMercenary);
		this.m.ValidTypes = this.Const.LegendMod.FavoriteMercenary;
	}

});

