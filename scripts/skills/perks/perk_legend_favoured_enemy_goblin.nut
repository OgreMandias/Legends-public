this.perk_legend_favoured_enemy_goblin <- this.inherit("scripts/skills/legend_favoured_enemy_skill", {
	m = {},
	function create()
	{
		this.legend_favoured_enemy_skill.create();
		::Legends.Perks.onCreate(this, ::Legends.Perk.LegendFavouredEnemyGoblin);
		this.m.ValidTypes = this.Const.LegendMod.FavoriteGoblin;
	}

});

