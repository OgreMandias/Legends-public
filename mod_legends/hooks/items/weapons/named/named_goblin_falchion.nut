::mods_hookExactClass("items/weapons/named/named_goblin_falchion", function(o) {
	o.addSkill <- function( _skill )
	{
		if (_skill.getID() == ::Legends.Actives.getID(::Legends.Active.Slash))
			_skill.m.IsBreachSlash = true;

		this.weapon.addSkill(_skill);
	}

});
