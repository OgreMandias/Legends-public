this.legend_commanded_effect <- this.inherit("scripts/skills/skill", {
	m = {
		IsAlive = true
		IsApplied = false
	},
	function create()
	{
		::Legends.Effects.onCreate(this, ::Legends.Effect.LegendCommanded);
		this.m.Description = "I can do this for the company! This character has been inspired by hearing just the right words, and is ready to go to their limits and beyond.";
		this.m.Icon = "skills/status_effect_69.png"; //replace
		this.m.IconMini = "status_effect_69_mini"; //replace
		this.m.Overlay = "status_effect_69"; //replace
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function onUpdate( _properties )
	{
		_properties.ActionPoints = 4;
		_properties.Initiative += 50;
		_properties.MeleeSkill += 10;
		_properties.RangedSkill += 15;
		_properties.MeleeDefense += 5;
		_properties.RangedDefense += 5;
		_properties.DamageReceivedTotalMult *= 0.5;
	}

	function onAdded()
	{
	}

	function onRemoved()
	{
	}

	function onTurnStart()
	{
		if (!this.m.IsApplied)
		{
			local actor = this.getContainer().getActor();
			actor.setActionPoints(this.Math.min(actor.getActionPointsMax(), actor.getActionPoints() + 4));
			this.m.IsApplied = true;
		}
	}

	function onResumeTurn()
	{
		if (!this.m.IsApplied)
		{
			local actor = this.getContainer().getActor();
			actor.setActionPoints(this.Math.min(actor.getActionPointsMax(), actor.getActionPoints() + 4));
			this.m.IsApplied = true;
		}
	}

	function onDamageReceived( _attacker, _damageHitpoints, _damageArmor )
	{
		if (_damageHitpoints >= this.getContainer().getActor().getHitpoints())
		{
			this.m.IsAlive = false;
			this.onRemoved();
		}
	}

	function onTurnEnd()
	{
		this.removeSelf();
	}

});
