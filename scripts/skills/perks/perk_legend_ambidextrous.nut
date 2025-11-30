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
		OffhandDamageMult = 0.5,
		IsRefreshing = false,
		NeedsRefresh = null,
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
		return format("Fluid like water!\n\nThis character will follow up main hand attacks with a [color=" + ::Const.UI.Color.Active + "]%s[/color] from their off hand.", skill.getName());
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

		local offhandSkill = !::MSU.isNull(this.m.offHandSkill)
			? this.m.offHandSkill
			: this.m.HandToHand;
		local blockedOffhand = items.hasBlockedSlot(this.Const.ItemSlot.Offhand);
		if (offhandSkill != null && !blockedOffhand) {
			ret.push({
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Follow-up attack: [color=" + this.Const.UI.Color.PositiveValue + "]" + offhandSkill.getName() + "[/color]"
			});
		}

		if (this.isDualWielding()) {
			ret.push({
				id = 11,
				type = "text",
				icon = "ui/icons/damage_dealt.png",
				text = "Follow-up attack deals [color=" + this.Const.UI.Color.NegativeValue + "]-" + this.Math.floor((1.0 - this.m.OffhandDamageMult) * 100) + "%[/color] damage"
			});
		}

		if ((main == null || this.getContainer().hasEffect(::Legends.Effect.Disarmed))
			&& off == null
			&& !blockedOffhand)
		{
			ret.push({
				id = 3,
				type = "text",
				icon = "ui/icons/melee_skill.png",
				text = "[color=%positive%]+5[/color] Melee Skill"
			});
			ret.push({
				id = 4,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=%positive%]+10[/color] Melee Defense"
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

		// Don't trigger follow-up if the attack came from the offhand
		if (_skill.m.Item != null && off != null && _skill.m.Item.getID() == off.getID()) {
			return;
		}

		// Refresh offhand skill reference if it became invalid (e.g., after weapon switching)
		if (off != null && ::MSU.isNull(m.offHandSkill)) {
			if (m.ApplicableItems.find(off.getID()) != null) {
				setOffhandSkill(off.getPrimaryOffhandAttack());
			} else {
				local skill = this.findPrimaryAttackSkill(off);
				if (skill != null) {
					this.setOffhandSkill(skill);
				}
			}
		}

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

				// Don't trigger follow-up if offhand attack costs more AP than the mainhand attack used
				if (skillToUse.getActionPointCost() > _skill.getActionPointCost()) {
					return;
				}

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

	// Apply damage penalty for dual-wielded offhand attacks (not ApplicableItems)
	function onAnySkillUsed(_skill, _targetEntity, _properties) {
		if (!this.isDualWielding()) {
			return;
		}
		local items = this.getContainer().getActor().getItems();
		local oh = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		if (_skill.m.Item != null && oh != null && _skill.m.Item.getID() == oh.getID()) {
			_properties.DamageTotalMult *= this.m.OffhandDamageMult;
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
		local mh = items.getItemAtSlot(this.Const.ItemSlot.Mainhand);
		local oh = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		if (oh != null && oh.getID() == _item.getID()) {
			local skill = this.findPrimaryAttackSkill(_item);
			if (skill != null) {
				this.setOffhandSkill(skill);
			}
		}

		// Mark which slot needs refresh
		if (!this.m.IsRefreshing && mh != null && oh != null && mh.getID() != oh.getID()) {
			if (mh == _item) {
				this.m.NeedsRefresh = "oh";
			} else if (oh == _item) {
				this.m.NeedsRefresh = "mh";
			}
		}
	}

	// Works when equipping from bag
	// When equipping from inventory, the weapon skills replace everything

	function onUnequip(_item) {
		resetOffhandSkill();

		// Mark which slot needs refresh
		if (!this.m.IsRefreshing) {
			local items = this.getContainer().getActor().getItems();
			local mh = items.getItemAtSlot(this.Const.ItemSlot.Mainhand);
			local oh = items.getItemAtSlot(this.Const.ItemSlot.Offhand);

			if (mh != null && oh != null && mh.getID() != oh.getID()) {
				if (mh == _item) {
					this.m.NeedsRefresh = "oh";
				} else if (oh == _item) {
					this.m.NeedsRefresh = "mh";
				}
			} else if (mh != null && mh != _item && oh == null) {
				this.m.NeedsRefresh = "mh";
			} else if (oh != null && oh != _item && mh == null) {
				this.m.NeedsRefresh = "oh";
			}
		}
	}

	function onAfterUpdate(_properties) {
		if (this.m.NeedsRefresh == null || this.m.IsRefreshing) {
			return;
		}

		local refreshTarget = this.m.NeedsRefresh;
		this.m.NeedsRefresh = null;
		this.m.IsRefreshing = true;

		local actor = this.getContainer().getActor();
		local items = actor.getItems();

		if (refreshTarget == "mh") {
			local mh = items.getItemAtSlot(this.Const.ItemSlot.Mainhand);
			if (mh != null) {
				mh.onUnequip();
				mh.onEquip();
			}
		} else if (refreshTarget == "oh") {
			local oh = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
			if (oh != null) {
				oh.onUnequip();
				oh.onEquip();
			}
		}

		this.m.IsRefreshing = false;
	}

	// Returns true if dual wielding non ApplicableItems
	function isDualWielding() {
		local items = this.getContainer().getActor().getItems();
		local mh = items.getItemAtSlot(this.Const.ItemSlot.Mainhand);
		local oh = items.getItemAtSlot(this.Const.ItemSlot.Offhand);
		if (mh == null || oh == null) {
			return false;
		}
		if (this.m.ApplicableItems.find(oh.getID()) != null) {
			return false;
		}
		return true;
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
