this.legend_class_skill_book_item <- ::inherit("scripts/items/misc/legend_skill_book", {
	m = {
		PerkGroups = ::Const.Perks.ClassTrees.Tree,
		Cooldown = 50
	},
	function create()
	{
		this.legend_skill_book.create();
		this.m.ID = "misc.legend_class_skill_book";
		this.m.Name = "Art of War";
		this.m.Description = "Tool usage training manual, written by a master crafstman. Will teach the relevant class skill group to the character that uses it.";
		this.m.Icon = "misc/inventory_ledger_item.png";
		this.m.SlotType = ::Const.ItemSlot.None;
		this.m.ItemType = ::Const.Items.ItemType.Usable;
		this.m.IsDroppedAsLoot = true;
		this.m.IsUsable = true;
		this.m.Value = 1500;
	}

	function getName()
	{
		return "Tools of the Trade: " + this.m.PerkGroupSelection.Name;
	}

	function isAbleToUseScroll( _actor )
	{
		if (_actor.getFlags().getAsInt("LegendsScrollCooldown") > 0)
			return "Failed to use this item as the user will be recovering from the last reading for another [color=" + ::Const.UI.Color.NegativeValue + "]" + _actor.getFlags().getAsInt("LegendsScrollCooldown") +"[/color] days.";

		if (_actor.getFlags().getAsInt("LegendsSkillBookCount") <= 1)
			return true;

		return true;
	}

	function addScrollCounter( _actor )
	{
		_actor.getFlags().increment("LegendsScrollCooldown", this.m.Cooldown);
		_actor.getFlags().set("LegendsSkillBookCount", 1);
	}
});

