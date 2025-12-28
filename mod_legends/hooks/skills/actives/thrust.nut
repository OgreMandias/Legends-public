::mods_hookExactClass("skills/actives/thrust", function(o)
{
	o.m.IsGoedendagThrust <- false;
	o.m.IsHaftStrike <- false;
	o.m.DazeChance <- 25;

	o.setItem <- function (_item)
	{
		this.skill.setItem(_item);
		if (this.m.IsGoedendagThrust)
		{
			this.m.Description = "A hefty swift slashing attack dealing average damage.";
			this.m.Icon = "skills/active_128.png";
			this.m.IconDisabled = "skills/active_128_sw.png";
			this.m.Overlay = "active_128";
			this.m.ActionPointCost = 6;
			this.m.DirectDamageMult = 0.4;
			this.m.FatigueCost = 15;
			this.m.InjuriesOnBody = this.Const.Injury.BluntAndPiercingBody;
			this.m.InjuriesOnHead = this.Const.Injury.BluntAndPiercingHead;
		}
		if (this.m.IsHaftStrike)
		{
			this.m.Description = "A swift strike with the weapon\'s haft. Not particularly effective, but offers versatility on heavy weapons.";
			this.m.Icon = "skills/active_hafstrike.png";
			this.m.IconDisabled = "skills/active_hafstrike_bw.png";
			this.m.Overlay = "active_hafstrike";
			this.m.FatigueCost = 15;
			this.m.HitChanceBonus = 0;
			this.m.InjuriesOnBody = this.Const.Injury.BluntAndPiercingBody;
			this.m.InjuriesOnHead = this.Const.Injury.BluntAndPiercingHead;
		}
	}

	o.getTooltip = function ()
	{
		local ret = this.getDefaultTooltip();
		if (this.m.IsGoedendagThrust)
		{
			ret.push({
				id = 7,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Has a [color=%positive%]" + this.m.DazeChance + "%[/color] chance to Daze on a hit"
			});
		}
		return ret;
	}

	local onAfterUpdate = o.onAfterUpdate;
	o.onAfterUpdate = function (_properties)
	{
		onAfterUpdate(_properties);
		this.m.DazeChance = _properties.IsSpecializedInMaces ? 50 : 25;
	}

	o.onTargetHit <- function(_skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor)
	{
		if (_skill != this || !this.m.IsGoedendagThrust)
			return;

		if (::Legends.S.skillEntityAliveCheck(_targetEntity))
			return;

		local actor = this.getContainer().getActor();
		if (!target.getCurrentProperties().IsImmuneToDaze && this.Math.rand(1, 100) <= this.m.DazeChance)
		{
			local dazed = ::Legends.Effects.grant(_targetEntity, ::Legends.Effect.Dazed);

			if (!actor.isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer) {
				this.Tactical.EventLog.log(dazed.getLogEntryOnAdded(this.Const.UI.getColorizedEntityName(actor), this.Const.UI.getColorizedEntityName(_targetEntity)));
			}
		}
	}

	local onUse = o.onUse;
	o.onUse = function ( _user, _targetTile )
	{
		if (!this.m.IsGoedendagThrust || !this.m.IsHaftStrike)
			return onUse(_user, _targetTile);

		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectBash);
		return this.attackEntity(_user, _targetTile.getEntity());
	}

	local onAnySkillUsed = o.onAnySkillUsed;
	o.onAnySkillUsed = function( _skill, _targetEntity, _properties )
	{
		if (!this.m.IsHaftStrike)
			return onAnySkillUsed( _skill, _targetEntity, _properties );

		if (_skill == this)
			_properties.DamageTotalMult *= 0.6;
	}
});
