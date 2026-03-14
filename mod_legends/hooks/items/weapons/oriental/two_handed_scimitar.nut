::mods_hookExactClass("items/weapons/oriental/two_handed_scimitar", function(o) {

	local create = o.create;
	o.create = function() {
		create();
		this.m.Categories = "Cleaver, Two-Handed";
		this.m.Value = 2900;
		this.setVariant(this.Math.rand(0, 2));
	}

	o.updateVariant <- function() {
		local v = this.getVariant() == 0 ? "" : "_" + this.getVariant();
		this.m.Icon = "weapons/melee/two_handed_scimitar_01" + v + "_70x70.png";
		this.m.IconLarge = "weapons/melee/two_handed_scimitar_01" + v + ".png";
		this.m.ArmamentIcon = "icon_two_handed_scimitar_01" + v;
	}

	o.onEquip = function ()
	{
		this.weapon.onEquip();
		::Legends.Actives.grant(this, ::Legends.Active.LegendHew);
		::Legends.Actives.grant(this, ::Legends.Active.LegendHarvest);
		::Legends.Actives.grant(this, ::Legends.Active.Decapitate);
	}

});
