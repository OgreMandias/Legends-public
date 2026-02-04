::mods_hookExactClass("items/weapons/named/named_goblin_falchion", function(o) {

	local create = o.create;
	o.create = function() {
		create();
		this.m.WeaponType = ::Const.Items.WeaponType.Sword;
	}

});
