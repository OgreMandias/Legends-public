this.legend_skill_book <- ::inherit("scripts/items/item", {
	m = {
		Selection = null,
		PerkGroups = [],
		PerkGroupSelection = null,
		HasToBeIdentified = false,
		Cooldown = 50, // default for skillbooks
	},
	function create()
	{
		this.item.create();
		this.m.ID = "";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "";
		this.m.SlotType = ::Const.ItemSlot.None;
		this.m.ItemType = ::Const.Items.ItemType.Usable;
		this.m.IsDroppedAsLoot = true;
		this.m.IsUsable = true;
		this.m.Value = 0;
		this.m.PerkGroupSelection = this.m.PerkGroups[this.Math.rand(0, this.m.PerkGroups.len() - 1)]

	}

	function playInventorySound( _eventType )
	{
		::Sound.play("sounds/scribble.wav", ::Const.Sound.Volume.Inventory);
	}

	function getTooltip()
	{
		local result = [
			{
				id = 1,
				type = "title",
				text = getName()
			},
			{
				id = 2,
				type = "description",
				text = getDescription()
			},
			{
				id = 66,
				type = "text",
				text = getValueString()
			},
			{
				id = 3,
				type = "image",
				image = getIcon()
			}
		];
		if (this.m.HasToBeIdentified && ::World.Statistics.getFlags().get("HasScholar"))
		{
			result.push({
				id = 10,
				type = "text",
				icon = "ui/tooltips/special.png",
				text = format("Reading this will allow the user to learn [color=%s]%s[/color] perk group.", ::Const.UI.Color.NegativeValue, this.m.PerkGroupSelection.Name),
			});
		}
		else
		{
			result.push({
				id = 10,
				type = "text",
				icon = "ui/tooltips/special.png",
				text = "Reading this will allow the user to learn a perk group, but the company does not have a Scholar to know which exactly",
			});
		}
		
	}

	function isAbleToUseScroll( _actor )
	{
		local effect = ::Legends.Effects.get(targetEntity, ::Legends.Effect.LegendIrritable);
		if (effect != null)
			return "Failed to use this item as the user will be recovering from the last reading for another [color=" + ::Const.UI.Color.NegativeValue + "]" + effect.m.HealingTimeMin + "-" + effect.m.HealingTimeMax +"[/color] days.";

		if (_actor.getSkills().hasTrait(::Legends.Trait.Dumb))
			return "Failed to use this item as the user has [color=" + ::Const.UI.Color.NegativeValue + "]Dumb[/color] trait.";

		if (_actor.getSkills().hasSkill("injury.brain_damage"))
			return "Failed to use this item as the user has [color=" + ::Const.UI.Color.NegativeValue + "]Brain Damage[/color] injury.";

		if (_actor.getFlags().getAsInt("LegendsScrollCount") <= 0)
			return true;

		if (!_actor.getSkills().hasTrait(::Legends.Trait.Bright) || _actor.getFlags().getAsInt("LegendsScrollCount") >= 2)
			return "This character has already reached their maximum item usage limit. Please use this item on a different character.";

		return true;
	}

	function addScrollCounter( _actor )
	{
		_actor.getFlags().increment("LegendsScrollCount");
	}

	function applySideEffect( _actor )
	{
		::Legends.Effects.grant(_actor, ::Legends.Effect.LegendIrritable, function(_effect) {
			_effect.addHealingTime(this.m.Cooldown);
		}.bindenv(this));
	}

	function onUse( _actor, _item = null )
	{
		local result = isAbleToUseScroll(_actor);
		if (!result)
			return ::World.State.m.CharacterScreen.m.JSHandle.asyncCall("openPopupDialog", result);
		if (_actor.hasPerkGroup(this.m.PerkGroupSelection)) {
			::World.State.m.CharacterScreen.m.JSHandle.asyncCall("openPopupDialog", "[color=%s]No possible new perk group can be added to this character.[/color].", ::Const.UI.Color.NegativeValue));
			return false;
		}

		::World.State.m.CharacterScreen.m.JSHandle.asyncCall("openPopupDialog", format("The [color=%s]%s[/color] perk group has been added to this character.", ::Const.UI.Color.NegativeValue, this.m.PerkGroupSelection.Name), _actor));
		::Sound.play("sounds/scribble.wav", ::Const.Sound.Volume.Inventory);
		addScrollCounter(_actor);
		applySideEffect(_actor);
		return true;
	}

	function onSerialize( _out )
	{
		this.item.onSerialize(_out);
		_out.writeU8(this.m.PerkGroupSelection);
	}

	function onDeserialize( _in )
	{
		this.item.onDeserialize(_in);
		this.m.PerkGroupSelection = _in.readU8();
	}

});

