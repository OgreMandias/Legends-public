::mods_hookExactClass("entity/tactical/humans/envoy", function(o)
{
	local getPlaceInFormation = o.getPlaceInFormation;
	o.getPlaceInFormation = function()
	{
		if (this.m.PlaceInFormation != null)
			return this.m.PlaceInFormation;
		else
			return getPlaceInFormation();
	}

	o.assignRandomEquipment = function ()
	{
		this.m.Items.equip(this.Const.World.Common.pickArmor([
			[1, ::Legends.Armor.Standard.linen_tunic]
		]));
		local item = this.Const.World.Common.pickHelmet([
			[1, ::Legends.Helmet.Standard.feathered_hat],
			[2, ::Legends.Helmet.None]
		]);
		if (item != null)
		{
			this.m.Items.equip(item);
		}
	}
});
