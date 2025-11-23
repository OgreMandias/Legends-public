this.perk_legend_ambidextrous <- this.inherit("scripts/skills/skill", {
	m = {
		offHandSkill = null,
		HandToHand = null,
		ApplicableItems = [
			"shield.legend_named_parrying_dagger",
			"shield.legend_parrying_dagger",
			"shield.buckler",
			"shield.legend_mummy_shield"
		],
		DualWieldEffect = null,
	},

	// takes a weakTableRef
	function setOffhandSkill(_a) {
		this.m.offHandSkill = ::MSU.asWeakTableRef(_a);
	}

	function resetOffhandSkill() {
		this.m.offHandSkill = null;
	}

	function create() {
		::Legends.Perks.onCreate(this, ::Legends.Perk.LegendAmbidextrous);
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
	}

	function isHidden() {
		if (!::MSU.isNull(this.m.offHandSkill)) {
			return false;
		}
		local items = this.getContainer().getActor().getItems();
		local off = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		return !(off == null && !items.hasBlockedSlot(this.Const.ItemSlot.Offhand));
	}

	function getDescription() {
		local skill = !::MSU.isNull(this.m.offHandSkill) ? this.m.offHandSkill : this.m.HandToHand;
		return format("Fluid like water!\n\nThis character will follow up any attack with a [color=" + ::Const.UI.Color.Active + "]%s[/color] from their off hand! If both hands are free, they also gain additional melee skill and melee defense.", skill.getName());
	}

	function getTooltip() {
		local items = this.getContainer().getActor().getItems();
		local off = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		local main = items.getItemAtSlot(this.Const.ItemSlot.Mainhand);

		local ret = [
			{
				id = 1,
				type = "title",
				text = "Fluid" // Since the passive should have a different name than the perk in this case
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription() // Since the passive should have a different name than the perk in this case
			}
		];

		if ((main == null || this.getContainer().hasEffect(::Legends.Effect.Disarmed))
			&& off == null
			&& !items.hasBlockedSlot(this.Const.ItemSlot.Offhand))
		{
			ret.push({
				id = 3,
				type = "text",
				icon = "ui/icons/melee_skill.png",
				text = "[color=%positive%]+5[/color] melee skill"
			});
			ret.push({
				id = 4,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=%positive%]+10[/color] melee defense"
			});
		}

		return ret;
	}

	function onAnySkillExecuted(_skill, _targetTile, _targetEntity, _forFree) {

		if (!_skill.m.IsAttack) {
			return; // Don't execute a follow up attack if the first skill is not an attack
		}

		if (_skill.getID() == ::Legends.Actives.getID(::Legends.Active.HandToHand)
			&& this.getContainer().getActor().getItems().getItemAtSlot(::Const.ItemSlot.Mainhand) != null)
		{
			return; // or if you are using hand to hand while the mainhand is holding a weapon
		}

		local actor = this.getContainer().getActor();
		if (::Legends.S.skillEntityAliveCheck(actor, _targetEntity)) {
			return;
		}

		if (actor.getTile().getDistanceTo(_targetEntity.getTile()) > 1) {
			return; // no gomu gomu h2h attacks
		}

		local items = actor.getItems();
		local off = items.getItemAtSlot(this.Const.ItemSlot.Offhand);

		if (_targetEntity != null
			&& !items.hasBlockedSlot(this.Const.ItemSlot.Offhand)
			&& (off == null || !::MSU.isNull(this.m.offHandSkill)))
		{
			if (!_forFree) {
				if (_targetTile == null || actor.getTile() == null) {
					return;
				}

				local skillToUse = !::MSU.isNull(this.m.offHandSkill)
					? this.m.offHandSkill
					: this.m.HandToHand;

				// i need to somehow do this more dynamically
				this.Const.SkillCounter++;
				::Time.scheduleEvent(::TimeUnit.Virtual, ::Const.Combat.RiposteDelay, this.executeFollowUpAttack.bindenv(this), {
					TargetTile = _targetTile,
					Skill = skillToUse
				});
			}
		}
	}

	function executeFollowUpAttack(_info) {
		local entity = _info.TargetTile.getEntity();
		if (::Legends.S.skillEntityAliveCheck(entity)) {
			return;
		}
		if (::MSU.isNull(_info.Skill)) {
			return;
		}

		_info.Skill.useForFree(_info.TargetTile);
	}

	function onUpdate(_properties) {
		local items = this.getContainer().getActor().getItems();
		local off = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		local main = items.getItemAtSlot(this.Const.ItemSlot.Mainhand);

		if ((main == null || this.getContainer().hasEffect(::Legends.Effect.Disarmed))
			&& off == null
			&& !items.hasBlockedSlot(this.Const.ItemSlot.Offhand))
		{
			_properties.MeleeDefense += 10;
			_properties.MeleeSkill += 5;

		}
	}

	function onAdded() {
		this.m.HandToHand = ::MSU.asWeakTableRef(::Legends.Actives.get(this, ::Legends.Active.HandToHand));

		local off = this.getContainer().getActor().getOffhandItem();
		if (off != null) {
			this.onEquip(off);
		}
	}

	function onEquip(_item) {

		// Check if this is one of the hardcoded offhand weapons (parrying dagger, buckler, etc.)
		if (this.m.ApplicableItems.find(_item.getID()) != null) {
			setOffhandSkill(_item.getPrimaryOffhandAttack());
			return;
		}

		// Check if this is a dual-wielded weapon
		local items = this.getContainer().getActor().getItems();
		local oh = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		if (oh != null && oh.getID() == _item.getID()) {
			local skill = this.findPrimaryAttackSkill(_item);
			if (skill != null) {
				this.setOffhandSkill(skill);
				::Legends.Effects.grant(this, ::Legends.Effect.LegendDualWieldOffhand, function (_effect) {
					_effect.setOffhandWeapon(_item);
					this.m.DualWieldEffect = ::MSU.asWeakTableRef(_effect);
				}
				.bindenv(this));
			}
		}
	}

	function onUnequip(_item) {

		// Check if this is one of the hardcoded offhand weapons (parrying dagger, buckler, etc.)
		if (this.m.ApplicableItems.find(_item.getID()) != null) {
			resetOffhandSkill();
			return;
		}

		// Check if this is a dual-wielded weapon
		if (_item != null
			&& (_item.m.SlotType == this.Const.ItemSlot.Mainhand || _item.m.SlotType == this.Const.ItemSlot.Offhand))
		{
			if (!::MSU.isNull(this.m.DualWieldEffect)) {
				resetOffhandSkill();
				::Legends.Effects.remove(this, ::Legends.Effect.LegendDualWieldOffhand);
				this.m.DualWieldEffect = null;
			}
		}
	}

	function findPrimaryAttackSkill(_weapon) {
		if (_weapon == null) {
			return null;
		}

		local skills = this.getContainer().getActor().getSkills();
		local bestSkill = null;
		local bestAPCost = 9999;

		foreach (skill in skills.m.Skills) {
			if (skill.m.Item != null && skill.m.Item.getID() == _weapon.getID()) {

				// Use same validation code as Attack of Opportunity
				if (!skill.isActive()
					|| !skill.isAttack()
					|| !skill.isTargeted()
					|| skill.isIgnoredAsAOO()
					|| skill.isDisabled()
					|| !skill.isUsable()
					|| skill.getMinRange() > 1
					|| skill.isRanged())
				{
					continue;
				}

				local apCost = skill.getActionPointCost();
				if (apCost < bestAPCost) {
					bestSkill = skill;
					bestAPCost = apCost;
				}
			}
		}

		if (bestSkill == null) {
			::logWarning("perk_legend_ambidextrous: no valid primary attack skill found for weapon: " + _weapon.getID());
		}

		return bestSkill;
	}

});
