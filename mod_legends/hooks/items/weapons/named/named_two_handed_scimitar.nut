::mods_hookExactClass("items/weapons/named/named_two_handed_scimitar", function(o) {

	local create = o.create;
	o.create = function ()
	{
		create();
		this.m.Variants = [1,2];
		this.m.Categories = "Cleaver, Two-Handed";
	}

	o.onEquip = function ()
	{
		this.named_weapon.onEquip();
		::Legends.Actives.grant(this, ::Legends.Active.LegendHew);
		::Legends.Actives.grant(this, ::Legends.Active.LegendHarvest);
		::Legends.Actives.grant(this, ::Legends.Active.Decapitate);
	}
});
