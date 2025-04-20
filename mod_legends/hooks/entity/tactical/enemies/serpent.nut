::mods_hookExactClass("entity/tactical/enemies/serpent", function(o)
{
	local create = o.create;
	o.create = function ()
	{
		create();
		this.m.ExcludedInjuries.push("injury.cut_leg_muscles");
	}

	local onInit = o.onInit;
	o.onInit = function ()
	{
		onInit();
	 	if (::Legends.isLegendaryDifficulty())
		{
			::Legends.Perks.grant(this, ::Legends.Perk.Dodge);
			::Legends.Perks.grant(this, ::Legends.Perk.Anticipation);
			::Legends.Perks.grant(this, ::Legends.Perk.LegendAlert);
			::Legends.Traits.grant(this, ::Legends.Trait.Fearless);
			::Legends.Traits.grant(this, ::Legends.Trait.Weasel);
		}
	}
});
