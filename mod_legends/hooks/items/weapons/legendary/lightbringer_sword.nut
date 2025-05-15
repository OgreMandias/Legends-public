::mods_hookExactClass("items/weapons/legendary/lightbringer_sword", function(o) {

	o.addSkill <- function( _skill )
	{
		if (_skill.getID() == ::Legends.Actives.getID(::Legends.Active.SlashLightning))
			::Legends.Actives.grant(this, ::Legends.Active.Slash);
	}

	o.onDamageDealt <- function ( _target, _skill, _hitInfo )
	{
		local selectedTargets = [];
		local potentialTargets = [];
		local potentialTiles = [];
		local target;
		local targetTile = _target.getTile();

		if (this.m.SoundOnLightning.len() != 0)
		{
			this.Sound.play(this.m.SoundOnLightning[this.Math.rand(0, this.m.SoundOnLightning.len() - 1)], this.Const.Sound.Volume.Skill * 2.0, _user.getPos());
		}

		if (!targetTile.IsEmpty && _target.isAlive())
		{
			target = _target;
			selectedTargets.push(target.getID());
		}

		local data = {
			Skill = _skill,
			User = _user,
			TargetTile = targetTile,
			Target = target
		};
		this.applyEffect(data, 100);
		potentialTargets = [];
		potentialTiles = [];

		for( local i = 0; i < 6; i = ++i )
		{
			if (!targetTile.hasNextTile(i))
			{
			}
			else
			{
				local tile = targetTile.getNextTile(i);

				if (tile.ID != myTile.ID)
				{
					potentialTiles.push(tile);
				}

				if (!tile.IsOccupiedByActor || !tile.getEntity().isAttackable() || tile.getEntity().isAlliedWith(_user) || selectedTargets.find(tile.getEntity().getID()) != null)
				{
				}
				else
				{
					potentialTargets.push(tile);
				}
			}
		}

		if (potentialTargets.len() != 0)
		{
			target = potentialTargets[this.Math.rand(0, potentialTargets.len() - 1)].getEntity();
			selectedTargets.push(target.getID());
			targetTile = target.getTile();
		}
		else
		{
			target = null;
			targetTile = potentialTiles[this.Math.rand(0, potentialTiles.len() - 1)];
		}

		local data = {
			Skill = _skill,
			User = _user,
			TargetTile = targetTile,
			Target = target
		};
		this.applyEffect(data, 350);
		potentialTargets = [];
		potentialTiles = [];

		for( local i = 0; i < 6; i = ++i )
		{
			if (!targetTile.hasNextTile(i))
			{
			}
			else
			{
				local tile = targetTile.getNextTile(i);

				if (tile.ID != myTile.ID)
				{
					potentialTiles.push(tile);
				}

				if (!tile.IsOccupiedByActor || !tile.getEntity().isAttackable() || tile.getEntity().isAlliedWith(_user) || selectedTargets.find(tile.getEntity().getID()) != null)
				{
				}
				else
				{
					potentialTargets.push(tile);
				}
			}
		}

		if (potentialTargets.len() != 0)
		{
			target = potentialTargets[this.Math.rand(0, potentialTargets.len() - 1)].getEntity();
			selectedTargets.push(target.getID());
			targetTile = target.getTile();
		}
		else
		{
			target = null;
			targetTile = potentialTiles[this.Math.rand(0, potentialTiles.len() - 1)];
		}

		local data = {
			Skill = _skill,
			User = _user,
			TargetTile = targetTile,
			Target = target
		};
		this.applyEffect(data, 550);
	}
});
