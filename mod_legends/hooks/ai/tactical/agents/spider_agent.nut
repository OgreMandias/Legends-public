::mods_hookExactClass("ai/tactical/agents/spider_agent", function(o) {
	local create = o.create;
	o.create = function () {
		create();
		// as spider bite is buffed, and ai expects really big dmg with it now, this lowers the attack priority to around 66% chance
		// which is similar to vanilla numbers
		this.m.Properties.TargetPriorityDamageMult = 0.065;
	}
});


